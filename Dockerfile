FROM ubuntu

RUN apt update && apt install -y gdebi-core busybox                                                                       \
                                 fonts-noto                                                                               \
                                 fonts-noto-cjk                                                                           \
                                 fonts-noto-cjk-extra                                                                     \
                                 fonts-noto-color-emoji                                                                   \
                                 fonts-noto-hinted                                                                        \
                                 fonts-noto-mono                                                                          \
                                 fonts-noto-unhinted                                                                      \
  && busybox wget https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.bionic_amd64.deb \
  && gdebi -n wkhtmltox_0.12.5-1.bionic_amd64.deb                                                                         \
  && rm wkhtmltox_0.12.5-1.bionic_amd64.deb
