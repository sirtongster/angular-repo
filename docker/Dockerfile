FROM httpd:2.4

COPY ./angular/ /usr/local/apache2/htdocs/

COPY ./apache/modules/mod_proxy_html.so /usr/local/apache2/modules/mod_proxy_html.so
COPY ./apache/modules/mod_xml2enc.so /usr/local/apache2/modules/mod_xml2enc.so

COPY ./apache/conf/httpd.conf /usr/local/apache2/conf/httpd.conf
COPY ./apache/conf/httpd-vhosts.conf /usr/local/apache2/conf/extra/httpd-vhosts.conf
COPY ./apache/conf/proxy-html.conf /usr/local/apache2/conf/extra/proxy-html.conf
