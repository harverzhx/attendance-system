const realtime = {
    channel: null,
    pollTimer: null,
    callbacks: {},

    init(options = {}) {
        this.callbacks.onScan = options.onScan || null;
        this.callbacks.onUpdate = options.onUpdate || null;
        const pollInterval = options.pollInterval || 5000;
        const pollUrl = options.pollUrl || '/api/dashboard/gate';
        const enablePolling = options.enablePolling !== false;

        // BroadcastChannel for cross-tab communication
        try {
            this.channel = new BroadcastChannel('gate_attendance');
            this.channel.onmessage = (e) => {
                const msg = e.data;
                if (msg.type === 'scan' && this.callbacks.onScan) {
                    this.callbacks.onScan(msg.data);
                }
                if (msg.type === 'update' && this.callbacks.onUpdate) {
                    this.callbacks.onUpdate(msg.data);
                }
            };
        } catch (e) {
            // BroadcastChannel not supported, rely on polling
        }

        // Polling fallback
        if (enablePolling) {
            let lastPoll = 0;
            this.pollTimer = setInterval(async () => {
                try {
                    const res = await fetch(pollUrl, {
                        headers: { 'Authorization': 'Bearer ' + (localStorage.getItem('auth_token') || '') }
                    });
                    const data = await res.json();
                    if (data.success && this.callbacks.onUpdate) {
                        this.callbacks.onUpdate(data.data);
                    }
                } catch (_) {}
            }, pollInterval);
        }
    },

    broadcast(type, data) {
        try {
            if (this.channel) {
                this.channel.postMessage({ type, data });
            }
        } catch (_) {}
    },

    broadcastScan(data) {
        this.broadcast('scan', data);
    },

    broadcastUpdate(data) {
        this.broadcast('update', data);
    },

    destroy() {
        if (this.pollTimer) clearInterval(this.pollTimer);
        if (this.channel) this.channel.close();
    }
};
