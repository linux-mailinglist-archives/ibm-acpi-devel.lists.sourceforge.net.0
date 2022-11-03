Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C4EFB617B01
	for <lists+ibm-acpi-devel@lfdr.de>; Thu,  3 Nov 2022 11:45:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1oqXiZ-00033K-4D;
	Thu, 03 Nov 2022 10:45:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <m.szczepaniak.000@gmail.com>) id 1oqXiL-00032r-6x
 for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 03 Nov 2022 10:44:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Subject:From:MIME-Version:Date:Message-ID:
 Content-Type:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=owpU4LalTd0M3JO/7Vo0GI1Kpm6M5hOKtTLk0oKieC0=; b=IWmRKgScBHjoK2PNYV2MCUPnSe
 1agdkXM32+ruUeP8sKrXvMZpHZJOeefKYD6/GTtfgdmRDJzpBjGFpcNfHBanL/wwhApRLziCAWpy2
 9pAhM7Ckdxxjck4qS8NLyhxogZWkUvE2wWaFSN1/KwK+U7LVHZrGRZVKvrcgguIX1V94=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Subject:From:MIME-Version:Date:Message-ID:Content-Type:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=owpU4LalTd0M3JO/7Vo0GI1Kpm6M5hOKtTLk0oKieC0=; b=F
 q78EAO2hVskfWFobPCoNOp2rGhckCMXawd9NeY5cYV12V2D3dvGxhEodvVlLuurbRLCyurIhPlUv/
 n9J2hulZuK6sPM/IJZxVsf2KKhnrRUXtnS/4RSIglu7pbC92Sk6Ap0xx195Bi/bo5nNDewH9V3Ayh
 YrjQGFHZmaz4i7Ic=;
Received: from mail-lf1-f51.google.com ([209.85.167.51])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oqXiC-00ANom-Ne for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 03 Nov 2022 10:44:45 +0000
Received: by mail-lf1-f51.google.com with SMTP id j16so2067722lfe.12
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Thu, 03 Nov 2022 03:44:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-language:cc:to:subject:from:user-agent:mime-version:date
 :message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=owpU4LalTd0M3JO/7Vo0GI1Kpm6M5hOKtTLk0oKieC0=;
 b=D65D1RtaEd/XWhtSzTuzVG+gjDTsVmxm+8cCjjpQP6uaBmz0a8L7Whuq29EI6vA5Q8
 hklJX/le4sJy6kgJn0IfOkzaTCD/khTuj7pQrOIKyPtbWuNt9o3rmEMWCe3tfp44HJX8
 eUhQWc7RBPbT8PFCVp07kxb42VcdAKWf5sXcVsoFZBN3yxqKf/RpB3FTIp2M+SZab2F6
 n1elNHhIls23UtvTX1LYs78w5RMUninRVXtjVT1hMLsBOjvMX31/OhQAV+hj4vW2YCjy
 kpci907/FEe6RQ/AeBslR5SUhWKL+nQ3CAFibzXFLINh57cN78iKtMvQ13VD6YsO2Bgg
 PxpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-language:cc:to:subject:from:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=owpU4LalTd0M3JO/7Vo0GI1Kpm6M5hOKtTLk0oKieC0=;
 b=WYyjPjGwdpoBBzBZtUkQnoEz8NWQPGjOME/5n2c0/OpHQi1CYAf/n1faOj2PCYIGko
 gwFc+7nCXLNLk5ndA1c3YIzpeaDgfgENAzz09s9keRs4a9oMGQZedDEnrVrXsOSwjkA/
 RQsMjBm2lsGIHeqA/SbJI9h0p25ZS0acOnTbW6tVnxT2VQWenaHk+uJzeSjfCPkvz9ws
 PceNYJpveQBXOkJ6hbe2uZSJzBOxJkG7G+yxj5wp9z8r85bpAxN7nfQPr9ZqUkGT5qBQ
 yf0G+lBjKYrOLceB2hWGgOYSI07z9LwqU1MdUMAWPHIfGO9gBcMoQsrMzWPGePBV4rIF
 fwdg==
X-Gm-Message-State: ACrzQf006WNbAw301TdluxfSQV0ANqBvFoItrvzwAMCSvDtOQ4aVDgan
 XLGJ8nRGViyPlFnu97MPOcuVe3Y/MGK+Hg==
X-Google-Smtp-Source: AMsMyM7+eIt2cX/TSEQcX9ZEGgfqkzU7DPbAjm67jriiPp6JlHbqj/os/DOJFBlGt4Q276wYWp0Yrg==
X-Received: by 2002:a05:6512:4011:b0:4a2:5148:9e48 with SMTP id
 br17-20020a056512401100b004a251489e48mr10778626lfb.337.1667472274087; 
 Thu, 03 Nov 2022 03:44:34 -0700 (PDT)
Received: from [192.168.69.3] ([91.189.216.255])
 by smtp.gmail.com with ESMTPSA id
 17-20020ac25f51000000b004978e51b691sm79994lfz.266.2022.11.03.03.44.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 03 Nov 2022 03:44:33 -0700 (PDT)
Message-ID: <a06159d0-0178-df1a-0a05-a8304ae2967c@gmail.com>
Date: Thu, 3 Nov 2022 11:44:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
From: =?UTF-8?Q?Micha=c5=82_Szczepaniak?= <m.szczepaniak.000@gmail.com>
To: ibm-acpi-devel@lists.sourceforge.net
Content-Language: en-US
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Thinklight has only two values, on/off so it's reasonable
   for max_brightness to be 0 and 1 as if you write anything between 0 and 255
    it will be 255 anyway so there's no point for it to be 255. Signed-off-by:
    Michał Szczepaniak --- drivers/platform/x86/thinkpad_acpi.c | 1 + 1 file
    changed, 1 insertion(+) 
 
 Content analysis details:   (0.1 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [m.szczepaniak.000[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
                             in digit
                             [m.szczepaniak.000[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.167.51 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.167.51 listed in list.dnswl.org]
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
X-Headers-End: 1oqXiC-00ANom-Ne
Subject: [ibm-acpi-devel] [PATCH RESEND] platform/x86: thinkpad_acpi: Fix a
 max_brightness of thinklight
X-BeenThere: ibm-acpi-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: thinkpad-acpi/ibm-acpi Linux driver development
 <ibm-acpi-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/ibm-acpi-devel>, 
 <mailto:ibm-acpi-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=ibm-acpi-devel>
List-Post: <mailto:ibm-acpi-devel@lists.sourceforge.net>
List-Help: <mailto:ibm-acpi-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel>, 
 <mailto:ibm-acpi-devel-request@lists.sourceforge.net?subject=subscribe>
Cc: hmh@hmh.eng.br, platform-driver-x86@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============8120565481501172724=="
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

This is a multi-part message in MIME format.
--===============8120565481501172724==
Content-Type: multipart/alternative;
 boundary="------------VoK3PH3FNXwDfiO9uewS4kXj"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------VoK3PH3FNXwDfiO9uewS4kXj
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Thinklight has only two values, on/off so it's reasonable for 
max_brightness to be 0 and 1 as if you write anything between 0 and 255 
it will be 255 anyway so there's no point for it to be 255.

Signed-off-by: Michał Szczepaniak<m.szczepaniak.000@gmail.com>
---
  drivers/platform/x86/thinkpad_acpi.c | 1 +
  1 file changed, 1 insertion(+)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index 6a823b850a77..4a7369868f2e 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -5562,6 +5562,7 @@ static enum led_brightness light_sysfs_get(struct led_classdev *led_cdev)
  static struct tpacpi_led_classdev tpacpi_led_thinklight = {
  	.led_classdev = {
  		.name		= "tpacpi::thinklight",
+		.max_brightness = 1,
  		.brightness_set_blocking = &light_sysfs_set,
  		.brightness_get	= &light_sysfs_get,
  	}
-- 
2.37.3





--------------VoK3PH3FNXwDfiO9uewS4kXj
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    Thinklight has only two values, on/off so it's reasonable for
    max_brightness to be 0 and 1 as if you write anything between 0 and
    255 it will be 255 anyway so there's no point for it to be 255.<br>
    <br>
    <pre>Signed-off-by: Michał Szczepaniak <a class="moz-txt-link-rfc2396E" href="mailto:m.szczepaniak.000@gmail.com">&lt;m.szczepaniak.000@gmail.com&gt;</a>
---
 drivers/platform/x86/thinkpad_acpi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index 6a823b850a77..4a7369868f2e 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -5562,6 +5562,7 @@ static enum led_brightness light_sysfs_get(struct led_classdev *led_cdev)
 static struct tpacpi_led_classdev tpacpi_led_thinklight = {
 	.led_classdev = {
 		.name		= "tpacpi::thinklight",
+		.max_brightness = 1,
 		.brightness_set_blocking = &amp;light_sysfs_set,
 		.brightness_get	= &amp;light_sysfs_get,
 	}
-- 
2.37.3
</pre>
    <br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------VoK3PH3FNXwDfiO9uewS4kXj--


--===============8120565481501172724==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============8120565481501172724==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

--===============8120565481501172724==--

