// 简化版动画和交互组件库 - 去掉不必要的动画效果
(function() {
    'use strict';

    // ===== 简化的加载状态管理器 =====
    class SimpleLoadingManager {
        constructor() {
            this.loadingElements = new Map();
            this.init();
        }

        init() {
            this.createLoadingStyles();
        }

        createLoadingStyles() {
            const style = document.createElement('style');
            style.textContent = `
                /* 简化的加载状态样式 */
                .loading-overlay {
                    position: fixed;
                    top: 0;
                    left: 0;
                    right: 0;
                    bottom: 0;
                    background: rgba(255, 255, 255, 0.9);
                    backdrop-filter: blur(4px);
                    display: flex;
                    align-items: center;
                    justify-content: center;
                    z-index: 5000;
                    opacity: 0;
                    visibility: hidden;
                    transition: opacity 0.2s ease;
                }

                .loading-overlay.active {
                    opacity: 1;
                    visibility: visible;
                }

                .loading-spinner {
                    width: 40px;
                    height: 40px;
                    border: 3px solid #f3f3f3;
                    border-top: 3px solid #C3EB2E;
                    border-radius: 50%;
                    animation: spin 1s linear infinite;
                }

                @keyframes spin {
                    0% { transform: rotate(0deg); }
                    100% { transform: rotate(360deg); }
                }

                .loading-content {
                    text-align: center;
                    color: #181818;
                }

                .loading-text {
                    margin-top: 12px;
                    font-size: 14px;
                    font-weight: 500;
                }

                /* 简化的按钮反馈 */
                .btn-feedback {
                    transition: transform 0.1s ease;
                }

                .btn-feedback:active {
                    transform: scale(0.98);
                }

                /* 简化的卡片反馈 */
                .card-feedback {
                    transition: transform 0.1s ease;
                }

                .card-feedback:active {
                    transform: scale(0.99);
                }
            `;
            document.head.appendChild(style);
        }

        showLoading(text = '加载中...', container = document.body) {
            const loadingId = 'loading-' + Date.now();
            const loadingHTML = `
                <div id="${loadingId}" class="loading-overlay">
                    <div class="loading-content">
                        <div class="loading-spinner"></div>
                        <div class="loading-text">${text}</div>
                    </div>
                </div>
            `;
            
            container.insertAdjacentHTML('beforeend', loadingHTML);
            const element = document.getElementById(loadingId);
            
            // 立即显示
            requestAnimationFrame(() => {
                element.classList.add('active');
            });
            
            this.loadingElements.set(loadingId, element);
            return loadingId;
        }

        hideLoading(loadingId) {
            const element = this.loadingElements.get(loadingId);
            if (element) {
                element.classList.remove('active');
                setTimeout(() => {
                    element.remove();
                    this.loadingElements.delete(loadingId);
                }, 200);
            }
        }
    }

    // ===== 简化的手势管理器 =====
    class SimpleGestureManager {
        constructor() {
            this.init();
        }

        init() {
            this.setupBasicTouchEvents();
        }

        setupBasicTouchEvents() {
            // 只保留基本的点击反馈
            document.addEventListener('touchstart', (e) => {
                const element = e.target.closest('.btn-feedback, .card-feedback, .record-item, .profile-item');
                if (element) {
                    element.classList.add('btn-feedback');
                }
            }, { passive: true });

            document.addEventListener('touchend', (e) => {
                const element = e.target.closest('.btn-feedback');
                if (element) {
                    setTimeout(() => {
                        element.classList.remove('btn-feedback');
                    }, 100);
                }
            }, { passive: true });
        }
    }

    // ===== 初始化简化管理器 =====
    function initSimpleAnimations() {
        window.AnimationManager = {
            loading: new SimpleLoadingManager(),
            gestures: new SimpleGestureManager()
        };
    }

    // 自动初始化
    initSimpleAnimations();

    // 导出到全局
    window.AnimationManager = window.AnimationManager || {};

})();
