// Theme Toggle
const themeToggle = document.getElementById('themeToggle');

function setTheme(theme) {
  document.documentElement.setAttribute('data-theme', theme);
  localStorage.setItem('yp-theme', theme);
  // Toggle sun/moon icons
  document.querySelectorAll('.icon-moon').forEach(el => el.style.display = theme === 'dark' ? 'none' : 'block');
  document.querySelectorAll('.icon-sun').forEach(el => el.style.display = theme === 'dark' ? 'block' : 'none');
}

// Init theme
const saved = localStorage.getItem('yp-theme');
if (saved) setTheme(saved);

themeToggle?.addEventListener('click', () => {
  const current = document.documentElement.getAttribute('data-theme');
  setTheme(current === 'dark' ? 'light' : 'dark');
});

// Color swatch click to copy
document.querySelectorAll('.color-swatch').forEach(swatch => {
  swatch.style.cursor = 'pointer';
  swatch.addEventListener('click', () => {
    const hex = swatch.querySelector('.color-swatch-hex')?.textContent;
    if (hex) {
      navigator.clipboard?.writeText(hex.trim());
      const info = swatch.querySelector('.color-swatch-info');
      const original = info.innerHTML;
      info.innerHTML = '<div style="color:var(--color-success);font-size:12px;font-weight:600;">✓ 已复制</div>';
      setTimeout(() => { info.innerHTML = original; }, 1000);
    }
  });
});

// Sidebar active state
const currentPage = window.location.pathname.split('/').pop() || 'index.html';
document.querySelectorAll('.sidebar-link').forEach(link => {
  const href = link.getAttribute('href');
  if (href === currentPage) {
    link.classList.add('active');
  } else {
    link.classList.remove('active');
  }
});

// Top nav active state
const topLinks = document.querySelectorAll('.top-links a');
const designPages = ['index.html','design-principles.html','design-values.html','colors.html','typography.html','spacing.html','radius.html','shadow.html','iconography.html','naming.html','accessibility.html','motion.html','layout.html','responsive.html','dos-donts.html','changelog.html'];

topLinks.forEach(link => {
  link.classList.remove('active');
  const href = link.getAttribute('href');
  if (designPages.includes(currentPage) && href === 'index.html') link.classList.add('active');
  else if (currentPage === 'components.html' && href === 'components.html') link.classList.add('active');
  else if (currentPage === 'tokens.html' && href === 'tokens.html') link.classList.add('active');
  else if (currentPage === 'resources.html' && href === 'resources.html') link.classList.add('active');
});


// Download DESIGN.md
function downloadDesignMd(e) {
  e.preventDefault();
  downloadFile(e, '鱼泡直聘_DESIGN.md');
}

function downloadFile(e, filename) {
  e.preventDefault();
  fetch(filename)
    .then(r => r.blob())
    .then(blob => {
      const url = URL.createObjectURL(blob);
      const a = document.createElement('a');
      a.href = url;
      a.download = filename;
      document.body.appendChild(a);
      a.click();
      document.body.removeChild(a);
      URL.revokeObjectURL(url);
    })
    .catch(() => {
      window.open(filename, '_blank');
    });
}


// Sidebar icons
const sidebarIcons = {
  'index.html': '<svg class="si" viewBox="0 0 24 24"><path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"/><polyline points="9 22 9 12 15 12 15 22"/></svg>',
  'design-principles.html': '<svg class="si" viewBox="0 0 24 24"><path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"/></svg>',
  'design-values.html': '<svg class="si" viewBox="0 0 24 24"><path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"/></svg>',
  'colors.html': '<svg class="si" viewBox="0 0 24 24"><circle cx="13.5" cy="6.5" r="2.5"/><circle cx="17.5" cy="10.5" r="2.5"/><circle cx="8.5" cy="7.5" r="2.5"/><circle cx="6.5" cy="12.5" r="2.5"/><path d="M12 2C6.49 2 2 6.49 2 12s4.49 10 10 10c1.38 0 2.5-1.12 2.5-2.5 0-.61-.23-1.2-.64-1.67a.528.528 0 0 1 .36-.83H16c3.31 0 6-2.69 6-6 0-4.96-4.49-9-10-9z"/></svg>',
  'typography.html': '<svg class="si" viewBox="0 0 24 24"><polyline points="4 7 4 4 20 4 20 7"/><line x1="9" y1="20" x2="15" y2="20"/><line x1="12" y1="4" x2="12" y2="20"/></svg>',
  'spacing.html': '<svg class="si" viewBox="0 0 24 24"><rect x="3" y="3" width="18" height="18" rx="2" ry="2"/><line x1="3" y1="9" x2="21" y2="9"/><line x1="9" y1="21" x2="9" y2="9"/></svg>',
  'radius.html': '<svg class="si" viewBox="0 0 24 24"><path d="M12 3h7a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h7"/></svg>',
  'shadow.html': '<svg class="si" viewBox="0 0 24 24"><rect x="2" y="2" width="16" height="16" rx="2"/><rect x="6" y="6" width="16" height="16" rx="2"/></svg>',
  'iconography.html': '<svg class="si" viewBox="0 0 24 24"><circle cx="12" cy="12" r="10"/><line x1="14.31" y1="8" x2="20.05" y2="17.94"/><line x1="9.69" y1="8" x2="21.17" y2="8"/><line x1="7.38" y1="12" x2="13.12" y2="2.06"/><line x1="9.69" y1="16" x2="3.95" y2="6.06"/><line x1="14.31" y1="16" x2="2.83" y2="16"/><line x1="16.62" y1="12" x2="10.88" y2="21.94"/></svg>',
  'naming.html': '<svg class="si" viewBox="0 0 24 24"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"/><polyline points="14 2 14 8 20 8"/><line x1="16" y1="13" x2="8" y2="13"/><line x1="16" y1="17" x2="8" y2="17"/></svg>',
  'copywriting.html': '<svg class="si" viewBox="0 0 24 24"><path d="M12 20h9"/><path d="M16.5 3.5a2.121 2.121 0 0 1 3 3L7 19l-4 1 1-4L16.5 3.5z"/></svg>',
  'accessibility.html': '<svg class="si" viewBox="0 0 24 24"><circle cx="12" cy="12" r="10"/><circle cx="12" cy="8" r="1"/><path d="M12 12v4"/><path d="M8 10h8"/></svg>',
  'motion.html': '<svg class="si" viewBox="0 0 24 24"><polygon points="5 3 19 12 5 21 5 3"/></svg>',
  'layout.html': '<svg class="si" viewBox="0 0 24 24"><rect x="3" y="3" width="18" height="18" rx="2" ry="2"/><line x1="3" y1="9" x2="21" y2="9"/><line x1="9" y1="21" x2="9" y2="9"/></svg>',
  'responsive.html': '<svg class="si" viewBox="0 0 24 24"><rect x="5" y="2" width="14" height="20" rx="2" ry="2"/><line x1="12" y1="18" x2="12.01" y2="18"/></svg>',
  'dos-donts.html': '<svg class="si" viewBox="0 0 24 24"><polyline points="9 11 12 14 22 4"/><path d="M21 12v7a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h11"/></svg>',
  'changelog.html': '<svg class="si" viewBox="0 0 24 24"><circle cx="12" cy="12" r="10"/><polyline points="12 6 12 12 16 14"/></svg>'
};

document.querySelectorAll('.sidebar-link').forEach(link => {
  const href = link.getAttribute('href');
  const icon = sidebarIcons[href];
  if (icon) link.insertAdjacentHTML('afterbegin', icon);
});