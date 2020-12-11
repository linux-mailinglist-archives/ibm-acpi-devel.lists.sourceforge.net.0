Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 197F72D7097
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 11 Dec 2020 08:10:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1kncZ9-000828-Vy; Fri, 11 Dec 2020 07:10:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dmitry.torokhov@gmail.com>) id 1kncZ9-00081y-9c
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 11 Dec 2020 07:10:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=agSZMQdvaCGV7hdnrq9aTuJTFu3GU2xvnWahrOKp2Jc=; b=XfLpWkQKpsO/L53R5tSeX+10Hu
 Hd61DcypSLqFHCeZ3Snjw0pc5Rk/rbFj2tXYbCPfEBopXBTway7EQu9Go3Xc9w+Tzx8BZrSQiSU3p
 y1bjU8dFi5shw5UgS+vqHTTW0cHgSXsVSbk4AhgkWy9CN1QPMIHPe3KgzbvEi9FnPaDo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=agSZMQdvaCGV7hdnrq9aTuJTFu3GU2xvnWahrOKp2Jc=; b=HOMH+Ah1DRCumolcCRo/EMNac7
 7jfSL6/QaN72YQqZGxcmHkVe2pd012iHLm79vcuMunMQwEJDMZXsZPN8tEm4aupNj/UmeUGhaccgX
 UDpbd3Gok4x13MPPTnFLo87V1SsIGLT6RHPV+oLFWYHtQdu+sL1jg9HUmSbuVw7Szfw4=;
Received: from mail-pf1-f196.google.com ([209.85.210.196])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kncYu-007XKv-Lo
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 11 Dec 2020 07:10:11 +0000
Received: by mail-pf1-f196.google.com with SMTP id t8so6441564pfg.8
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Thu, 10 Dec 2020 23:09:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=agSZMQdvaCGV7hdnrq9aTuJTFu3GU2xvnWahrOKp2Jc=;
 b=iaCwlxTDrUkLZaR2IE70DXZlzMvfp14eegDu7lsHhJVqA94v1rPO5Tw4Re0cXWzUs5
 tTdmMAeE833iUuG2ImjX+nRar2krQmwfag0rFEsw5K4ZZDSsw9fPPIUx1J2XQU6rwbnH
 Kz55ev9L7xh0UTnBPP41ch7Fo9bpfKhtijuuRjlbCoQIPm6fHPuAydEfkg/7WaDcnUw2
 KrX/PojTaAYfFOJojhEJH0JOWh5+06NYveWE7iDEGwTmJRic5BIrac7SqUas4AAAIZYJ
 M0gohUFiRGvu59MmoW09LRLN4qrmmTOMEwyEoyc9qQHocn+A30QS9pv/UEmoXPeSjRD6
 JYkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=agSZMQdvaCGV7hdnrq9aTuJTFu3GU2xvnWahrOKp2Jc=;
 b=mwKWGUGzdoF0CaGs4dBeAJP2dXXKQUYxU5ejicKe+ESPZ23oIMXZPX0XukzqH/5c7x
 7ypQ3PsUDK0K21XJspQxdtAFDfC5P1VlfduoQZnBxdmizg6FKhZQePNUFNNTwgOHUR32
 1y8C05j9WhtEWnD6jEBprwHWtbDHKl3nDLqO68HW1h/sVKqa+4XdvmpO18/kqZonRwWd
 hkKm+/IoyfojMYLAknBoVDdohc8IunYU6qfXrKKMwP61Oiufx3wF/yf90TW5ZnvGhlgC
 5jsuzrK3bfnXBSdk0YxrUJ3m6BH/NW8/D30fHraWfTtKWh/8BTehBTIcsKPEPapJVi0T
 WreA==
X-Gm-Message-State: AOAM531WAPuZhcQAQkjBlx+ZOAlbJUjf7WTZyd6zGj2xoUVI8iOgYvyC
 IpFNLTIPrSRRdnoFXdfpf+g=
X-Google-Smtp-Source: ABdhPJxv8+WMAsqzX+/A7wLGk5FIrmzTZ6C65bUsZXxoEOBEVQ55NlCjhr48qYKwqGs7+RH4FmPorQ==
X-Received: by 2002:a63:4d5c:: with SMTP id n28mr10516947pgl.88.1607670583820; 
 Thu, 10 Dec 2020 23:09:43 -0800 (PST)
Received: from google.com ([2620:15c:202:201:a6ae:11ff:fe11:fcc3])
 by smtp.gmail.com with ESMTPSA id j3sm8846830pjs.50.2020.12.10.23.09.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Dec 2020 23:09:43 -0800 (PST)
Date: Thu, 10 Dec 2020 23:09:38 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <X9MbMja+TEfbKkmJ@google.com>
References: <2336e15d-ff4b-bbb6-c701-dbf3aa110fcd@redhat.com>
 <20200608112211.12125-1-andrzej.p@collabora.com>
 <20200608112211.12125-3-andrzej.p@collabora.com>
 <CGME20201207133237eucas1p26f8484944760a14e51dc7353ed33cd28@eucas1p2.samsung.com>
 <27ce1176-6318-45aa-4e22-3dec9f3df15d@samsung.com>
 <9c784a23-eade-eacd-3e67-d344a5758b83@collabora.com>
 <ad093ba3-7b17-18f3-6bb5-d8133c3da89a@samsung.com>
 <X9BwtHs9XriwR8gL@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <X9BwtHs9XriwR8gL@google.com>
X-Spam-Score: 1.7 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: samsung.com]
 1.8 FSL_HELO_FAKE          No description available.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (dmitry.torokhov[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kncYu-007XKv-Lo
Subject: [ibm-acpi-devel] [PATCH] Input: cyapa - do not call
 input_device_enabled from power mode handler
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
Cc: kernel@collabora.com, Nick Dyer <nick@shmanahar.org>,
 linux-iio@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 ibm-acpi-devel@lists.sourceforge.net, Laxman Dewangan <ldewangan@nvidia.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Peter Hutterer <peter.hutterer@redhat.com>, Fabio Estevam <festevam@gmail.com>,
 linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-acpi@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, linux-input@vger.kernel.org,
 Len Brown <lenb@kernel.org>, Michael Hennerich <michael.hennerich@analog.com>,
 linux-pm@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Vladimir Zapolskiy <vz@mleia.com>, Hans de Goede <hdegoede@redhat.com>,
 Lars-Peter Clausen <lars@metafoo.de>, linux-tegra@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Barry Song <baohua@kernel.org>,
 Ferruh Yigit <fery@cypress.com>, patches@opensource.cirrus.com,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Thierry Reding <thierry.reding@gmail.com>, Sangwon Jee <jeesw@melfas.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, Shawn Guo <shawnguo@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Input device's user counter is supposed to be accessed only while holding
input->mutex.  Commit d69f0a43c677 ("Input: use input_device_enabled()")
recently switched cyapa to using the dedicated API and it uncovered the
fact that cyapa driver violated this constraint.

This patch removes checks whether the input device is open when clearing
device queues when changing device's power mode as there is no harm in
sending input events through closed input device - the events will simply
be dropped by the input core.

Note that there are more places in cyapa driver that call
input_device_enabled() without holding input->mutex, those are left
unfixed for now.

Reported-by: Marek Szyprowski <m.szyprowski@samsung.com>
Signed-off-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>
---

Marek, could you please try this one?

 drivers/input/mouse/cyapa_gen3.c |    5 +----
 drivers/input/mouse/cyapa_gen5.c |    3 +--
 2 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/input/mouse/cyapa_gen3.c b/drivers/input/mouse/cyapa_gen3.c
index a97f4acb6452..4a9022faf945 100644
--- a/drivers/input/mouse/cyapa_gen3.c
+++ b/drivers/input/mouse/cyapa_gen3.c
@@ -907,7 +907,6 @@ static u16 cyapa_get_wait_time_for_pwr_cmd(u8 pwr_mode)
 static int cyapa_gen3_set_power_mode(struct cyapa *cyapa, u8 power_mode,
 		u16 always_unused, enum cyapa_pm_stage pm_stage)
 {
-	struct input_dev *input = cyapa->input;
 	u8 power;
 	int tries;
 	int sleep_time;
@@ -953,7 +952,6 @@ static int cyapa_gen3_set_power_mode(struct cyapa *cyapa, u8 power_mode,
 	 * depending on the command's content.
 	 */
 	if (cyapa->operational &&
-	    input && input_device_enabled(input) &&
 	    (pm_stage == CYAPA_PM_RUNTIME_SUSPEND ||
 	     pm_stage == CYAPA_PM_RUNTIME_RESUME)) {
 		/* Try to polling in 120Hz, read may fail, just ignore it. */
@@ -1223,8 +1221,7 @@ static int cyapa_gen3_try_poll_handler(struct cyapa *cyapa)
 	    (data.finger_btn & OP_DATA_VALID) != OP_DATA_VALID)
 		return -EINVAL;
 
-	return cyapa_gen3_event_process(cyapa, &data);
-
+	return cyapa->input ? cyapa_gen3_event_process(cyapa, &data) : 0;
 }
 
 static int cyapa_gen3_initialize(struct cyapa *cyapa) { return 0; }
diff --git a/drivers/input/mouse/cyapa_gen5.c b/drivers/input/mouse/cyapa_gen5.c
index abf42f77b4c5..afc5aa4dcf47 100644
--- a/drivers/input/mouse/cyapa_gen5.c
+++ b/drivers/input/mouse/cyapa_gen5.c
@@ -518,8 +518,7 @@ int cyapa_empty_pip_output_data(struct cyapa *cyapa,
 			*len = length;
 			/* Response found, success. */
 			return 0;
-		} else if (cyapa->operational &&
-			   input && input_device_enabled(input) &&
+		} else if (cyapa->operational && input &&
 			   (pm_stage == CYAPA_PM_RUNTIME_RESUME ||
 			    pm_stage == CYAPA_PM_RUNTIME_SUSPEND)) {
 			/* Parse the data and report it if it's valid. */


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
