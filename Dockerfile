FROM python:3.6
RUN mkdir /web
WORKDIR /root
COPY models libs static templates views wechat *.py requirements.txt local_settings.py.tmpl /web/
RUN pip install -r /web/requirements.txt -i http://pypi.douban.com/simple/ --trusted-host pypi.douban.com
WORKDIR /web
EXPOSE 8100