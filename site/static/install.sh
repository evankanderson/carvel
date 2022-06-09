
#!/bin/bash
## **This is an autogenerated file, do not change it manually**

if test -z "$BASH_VERSION"; then
  echo "Please run this script using bash, not sh or any other shell." >&2
  exit 1
fi

install() {
  set -euo pipefail

  dst_dir="${K14SIO_INSTALL_BIN_DIR:-/usr/local/bin}"

  if [ -x "$(command -v wget)" ]; then
    dl_bin="wget -nv -O-"
  else
    dl_bin="curl -s -L"
  fi

  shasum -v 1>/dev/null 2>&1 || (echo "Missing shasum binary" && exit 1)

  if [[ `uname` == Darwin ]]; then
    binary_type=darwin-amd64
    
    ytt_checksum=c370fab22081b17b780d4ec37fb664edb58fe6f28d635ad4beccbac7997586f9
    imgpkg_checksum=b8462c9b2b9c060e1a81c206ea9810937bf7357ae2ee150f94ec8635dff1d612
    kbld_checksum=5fd3afbe09a66fc9e91252c57448045eeeab1ee3f6d305da6f9885186b744e67
    kapp_checksum=20b57cbb2ba883ebb78809a71c42c0f26b7b0ca15610d7a37dab4d962cca6e54
    kwt_checksum=555d50d5bed601c2e91f7444b3f44fdc424d721d7da72955725a97f3860e2517
    vendir_checksum=c26547097d67f21e129a25557d9d36c7c0e109afe130adff63d3c83ce9459ecc
    kctrl_checksum=66d152a7264223c652bf3102e8badf1867fc4b46a568fbdf656db8bf4d4f08b1
  else
    binary_type=linux-amd64
    
    ytt_checksum=65dbc4f3a4a2ed84296dd1b323e8e7bd77e488fa7540d12dd36cf7fb2fc77c03
    imgpkg_checksum=c7190adcb8445480e4e457c899aecdf7ca98606c625493b904c0eb2ab721ce19
    kbld_checksum=67c86ece94a3747b2e011a5b72044b69f2594ca807621b1e1e4c805f6abcaeef
    kapp_checksum=1f5fa1cb1d90575d97d7f7f801070ebf4096f10a0b21b4bbd9521b183bad91c6
    kwt_checksum=92a1f18be6a8dca15b7537f4cc666713b556630c20c9246b335931a9379196a0
    vendir_checksum=1aa12d070f2e91fcb0f4d138704c5061075b0821e6f943f5a39676d7a4709142
    kctrl_checksum=0a861d98bb89d0bcbb8c80519397fbc9bcdbffe706b06054def9fd15c251ba1c
  fi

  echo "Installing ${binary_type} binaries..."

  
  echo "Installing ytt..."
  $dl_bin github.com/vmware-tanzu/carvel-ytt/releases/download/v0.41.1/ytt-${binary_type} > /tmp/ytt
  echo "${ytt_checksum}  /tmp/ytt" | shasum -c -
  mv /tmp/ytt ${dst_dir}/ytt
  chmod +x ${dst_dir}/ytt
  echo "Installed ${dst_dir}/ytt v0.41.1"
  
  echo "Installing imgpkg..."
  $dl_bin github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.29.0/imgpkg-${binary_type} > /tmp/imgpkg
  echo "${imgpkg_checksum}  /tmp/imgpkg" | shasum -c -
  mv /tmp/imgpkg ${dst_dir}/imgpkg
  chmod +x ${dst_dir}/imgpkg
  echo "Installed ${dst_dir}/imgpkg v0.29.0"
  
  echo "Installing kbld..."
  $dl_bin github.com/vmware-tanzu/carvel-kbld/releases/download/v0.34.0/kbld-${binary_type} > /tmp/kbld
  echo "${kbld_checksum}  /tmp/kbld" | shasum -c -
  mv /tmp/kbld ${dst_dir}/kbld
  chmod +x ${dst_dir}/kbld
  echo "Installed ${dst_dir}/kbld v0.34.0"
  
  echo "Installing kapp..."
  $dl_bin github.com/vmware-tanzu/carvel-kapp/releases/download/v0.48.0/kapp-${binary_type} > /tmp/kapp
  echo "${kapp_checksum}  /tmp/kapp" | shasum -c -
  mv /tmp/kapp ${dst_dir}/kapp
  chmod +x ${dst_dir}/kapp
  echo "Installed ${dst_dir}/kapp v0.48.0"
  
  echo "Installing kwt..."
  $dl_bin https://github.com/vmware-tanzu/carvel-kwt/releases/download/v0.0.6/kwt-${binary_type} > /tmp/kwt
  echo "${kwt_checksum}  /tmp/kwt" | shasum -c -
  mv /tmp/kwt ${dst_dir}/kwt
  chmod +x ${dst_dir}/kwt
  echo "Installed ${dst_dir}/kwt v0.0.6"
  
  echo "Installing vendir..."
  $dl_bin github.com/vmware-tanzu/carvel-vendir/releases/download/v0.27.0/vendir-${binary_type} > /tmp/vendir
  echo "${vendir_checksum}  /tmp/vendir" | shasum -c -
  mv /tmp/vendir ${dst_dir}/vendir
  chmod +x ${dst_dir}/vendir
  echo "Installed ${dst_dir}/vendir v0.27.0"
  
  echo "Installing kctrl..."
  $dl_bin github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.37.0/kctrl-${binary_type} > /tmp/kctrl
  echo "${kctrl_checksum}  /tmp/kctrl" | shasum -c -
  mv /tmp/kctrl ${dst_dir}/kctrl
  chmod +x ${dst_dir}/kctrl
  echo "Installed ${dst_dir}/kctrl v0.37.0"
  
}

install
