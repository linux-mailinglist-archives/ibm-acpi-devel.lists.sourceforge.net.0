Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD98601257
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 17 Oct 2022 17:02:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1okRd5-00004r-Hz;
	Mon, 17 Oct 2022 15:02:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <m.szczepaniak.000@gmail.com>) id 1okRd4-0008WH-AX
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 17 Oct 2022 15:02:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Subject:From:MIME-Version:Date:Message-ID:
 Content-Type:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0+qgwmysrXeae3sSxe0BwibLPVOrLH/WgUkNmEM7/mw=; b=f3CAHBkYQ1rldsXaVpuWWosXA9
 xJZcFVV2SjxRGQwW25FoHlvkOibHnkTjSa5F10kj2E2FiEtEtHlN44xjPRl6Bh52hFJN/hTSyNzKS
 QBW+W3JKcPXoraI7sVFIYWp9AmTHLdxMfZfv2CVHvPep8MN8AuWDjOLuq67ybl78v/MM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Subject:From:MIME-Version:Date:Message-ID:Content-Type:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=0+qgwmysrXeae3sSxe0BwibLPVOrLH/WgUkNmEM7/mw=; b=c
 hz2YzOVxUszLuG+szvCKGj/XjljMd5CWWlm1HVa7XA58iQ130R9Bmq+OfP+u19l8EyyX37plvLuuo
 RKwPLKispOazp0gYWqk3tBTLT2gPdpyjMs3WqMpEuAmHlvogDaKTiLxOQWaI6gPIBLsd59604bcox
 C4891x2fZAhg+4+s=;
Received: from mail-lj1-f169.google.com ([209.85.208.169])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1okRd3-0076wv-OP for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 17 Oct 2022 15:02:10 +0000
Received: by mail-lj1-f169.google.com with SMTP id h8so14279070lja.11
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 17 Oct 2022 08:02:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-language:cc:to:subject:from:user-agent:mime-version:date
 :message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=0+qgwmysrXeae3sSxe0BwibLPVOrLH/WgUkNmEM7/mw=;
 b=Bkso3Lsq+bvvztqX08LyqYat8XRlGejxnAvP5Qng+LJ2+v+i6FBcYNsGSN3eDo+YDs
 K3qhjShJlHhv1qCYPJOMX8LpR2rfz92hZsae1jTFQl84gdcRtBFIpugxGWthG2er82zM
 HlNUuu76eWssrr0RxeVNMLUnHM0sdMj+pK0nMByxQ4TsqNcDUd5ApGA7ONhmLTsZEEQl
 zWT4zstLMbC65aK7w4h2zny+L5vkuhP8r2NnWIBpxzzPhnhg6hnc5L3uLbkFE6B/8dm3
 7T2e16Q+krE7M3WiUiEfEUiMdwgcd2oS1H2bZ9lgOarpy6olc3HbeUS65J1hpp+0t0KB
 L3gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-language:cc:to:subject:from:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=0+qgwmysrXeae3sSxe0BwibLPVOrLH/WgUkNmEM7/mw=;
 b=iq9B0UlIevRxz7cyeuODf9TgWyNPTXR8yDiIXBgGgbKbGMIjFHNyOFMsQXDfust2qI
 TRrH4AT2UvO4RqDFLfLE0AO3xvLQG+un+cmOm+t0gwwmBbk6HemEu7/kqmKm05MacE8Z
 KxtlfQsqIuUE/r6letQZJG3wWljk1JFVZgXDB9pPQsYFTyWVTPBHCV27cIG3LReX/3KQ
 LKDwmnwKwp6damWTtul/XwPHJsbXqKP/szyBtnAKjesBZMFlgah52nOpl7FNfwt4hydu
 thcaqXoCWCuLPzQhA9UJI3ddq5ncJ2MYuVcOV8MWH+TJ8xuCh3tgHsDxeleoKtyvFyWA
 qdQA==
X-Gm-Message-State: ACrzQf1ciyr7fI2HZXX+OMT9kTevk5Go3lUk1cKEUCtjk2zotTCTN1X+
 JxeztuUkUVR0DcsGEpViEjUrZRHQO/o=
X-Google-Smtp-Source: AMsMyM5SN2AQIYMNb2Ox3eBu3G/kViAT86sMxfa8f9oKvSE4FwOozv+QgErZ/DQV+Ik3jRCrhb1FMA==
X-Received: by 2002:a05:651c:12c2:b0:26c:13b9:a694 with SMTP id
 2-20020a05651c12c200b0026c13b9a694mr4442162lje.79.1666018923055; 
 Mon, 17 Oct 2022 08:02:03 -0700 (PDT)
Received: from [192.168.69.3] ([91.189.216.255])
 by smtp.gmail.com with ESMTPSA id
 j16-20020a2e6e10000000b00261e3856abcsm1475616ljc.102.2022.10.17.08.02.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 17 Oct 2022 08:02:02 -0700 (PDT)
Message-ID: <01608a80-d708-78af-5d82-3b8a3fab47c9@gmail.com>
Date: Mon, 17 Oct 2022 17:02:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
From: =?UTF-8?Q?Micha=c5=82_Szczepaniak?= <m.szczepaniak.000@gmail.com>
To: ibm-acpi-devel@lists.sourceforge.net
Content-Language: en-US
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Thinklight has only two values, on/off so it's reasonable
 for max_brightness to be 0 and 1 as if you write anything between 0 and 255
 it will be 255 anyway so there's no point for it to be 255. Sending again
 as I noticed some issues with patch. 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.169 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [m.szczepaniak.000[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [m.szczepaniak.000[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.169 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1okRd3-0076wv-OP
Subject: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: Fix a
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
Content-Type: multipart/mixed; boundary="===============3924364845373443188=="
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

This is a multi-part message in MIME format.
--===============3924364845373443188==
Content-Type: multipart/alternative;
 boundary="------------ZK6Js07OIU0r6fzUY6H2qATi"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------ZK6Js07OIU0r6fzUY6H2qATi
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Thinklight has only two values, on/off so it's reasonable for 
max_brightness to be 0 and 1 as if you write anything between 0 and 255 
it will be 255 anyway so there's no point for it to be 255.

Sending again as I noticed some issues with patch.

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





--------------ZK6Js07OIU0r6fzUY6H2qATi
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    Thinklight has only two values, on/off so it's reasonable for
    max_brightness to be 0 and 1 as if you write anything between 0 and
    255 it will be 255 anyway so there's no point for it to be 255.<br>
    <br>
    <p>Sending again as I noticed some issues with patch.</p>
    <pre>---
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

--------------ZK6Js07OIU0r6fzUY6H2qATi--


--===============3924364845373443188==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============3924364845373443188==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

--===============3924364845373443188==--

