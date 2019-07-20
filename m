Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 697EA6EFE0
	for <lists+ibm-acpi-devel@lfdr.de>; Sat, 20 Jul 2019 17:22:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1horBc-0000TJ-Qb; Sat, 20 Jul 2019 15:22:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <nanodario@gmail.com>) id 1horBb-0000TB-C4
 for ibm-acpi-devel@lists.sourceforge.net; Sat, 20 Jul 2019 15:22:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Kjz29uaXOViEkvbQC/EqeL5ZlYftQJTWsTVkUNrscrY=; b=IllNy3+00Uz7g3HY1oSKnYtJcw
 zYGOKgFftAnWvyp+gwrI6D8sJPkYTfObGn4PHy7X4Pc1/1N9kiF/I9UvrIY0rtogueFfFxA2+xwSL
 xscqeDraeh6w5REcNOVXjxICFOf/JoEbbOVGUABf1VVbyV8OkJh29E/V5DiqqPmiKXo8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Kjz29uaXOViEkvbQC/EqeL5ZlYftQJTWsTVkUNrscrY=; b=GXb8j4y4KyfeX0Aic3w00KCmJx
 XyrQIgMXjJ/hgRfqkzB5+UYMxIbyBwDdfO86Ys34cMTRK1bvzsOc9gxMd2Bj6SaO5deJji1qUyMS+
 3fJihqYplHce6Sl40U6d7hCJAqnVx8kY0u2cKgTyNZrNwAlwZbcduny74E9dTFymqwaU=;
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1horBZ-009hMB-72
 for ibm-acpi-devel@lists.sourceforge.net; Sat, 20 Jul 2019 15:22:11 +0000
Received: by mail-wm1-f65.google.com with SMTP id h19so25667857wme.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Sat, 20 Jul 2019 08:22:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Kjz29uaXOViEkvbQC/EqeL5ZlYftQJTWsTVkUNrscrY=;
 b=lvpnV0tJbpJ+ncTDvyQ7KQnJODNiS5oUHZczyaB97uMibBAXQBQZQoQmKgFVy013lV
 tzA3kv4VaVy50YdjTn8P21iZ3L/Uv/cVzzBOAvOMIRU+PGNbIpfT4wunxavXrKjDtEkt
 XX5ehG0lkzQEj9HvdXxr/upsVxXn6K8ORqzxKaCicZzrtxcVSnlRQKFlyxDwqNIwHsX3
 kN2nOSFatkfCPYnrw5Lq0g5ySxfw6jW4hascxKjF856+WE5I1fuPPN/Ks7bBtWgrFjru
 LsTEDzrsSLHLYAjvV215a7TKnKv2FNCO5vMQsr79Er/E4dtOkW9VtnQjsNinMhG0AgMN
 5VSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Kjz29uaXOViEkvbQC/EqeL5ZlYftQJTWsTVkUNrscrY=;
 b=krjPB7fIwhKAMrMG91H7UYhtye9G1Hm0IKnyAI3dYlOwUsOsaB1NP2LHFDiPJ0Qqjf
 McSghGLHeDrFRy/lqpcwoi179ouku5qT7UqMxq2THj1YkE7O/fBzlKfAYPx87ooiFMVN
 FyXGIXqup4enIDwpTMYDn63o8MJSbWTeQmX7WMpBibCwFAM+D2wBHfG6yFc0ZZskw+hY
 EdxF4MX5ABSao88YzfBk7sdl2MVw3Pwr0gFMjphAmFNFSdti2RJTGWgwPUCPfG+nMpz1
 ypjuaKuUzHW0Dr78bczn4/JWM7ues6jWl6Cp2bXC3Z0/lYq2vzrHv69hrykEODguLsty
 Ze9Q==
X-Gm-Message-State: APjAAAU8RMrfhwesqCcHEM9NYV7NOF+5Qng204CJLfcWJPFJT8sppljz
 yj2yZwCSE73zMQJa57tAFLA=
X-Google-Smtp-Source: APXvYqyYEjxaca0tMLQl4BdoJaihJKiSKJ9PRi8eRULuuc3M9KWAKgnjOeo1UmEFAG6ufmXpHoGh6Q==
X-Received: by 2002:a1c:7fc3:: with SMTP id a186mr2125211wmd.151.1563636122435; 
 Sat, 20 Jul 2019 08:22:02 -0700 (PDT)
Received: from lenovodario.localnet ([151.52.237.69])
 by smtp.gmail.com with ESMTPSA id y16sm68550429wrg.85.2019.07.20.08.22.00
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 20 Jul 2019 08:22:01 -0700 (PDT)
From: Dario Messina <nanodario@gmail.com>
To: Stefan Assmann <sassmann@kpanic.de>
Date: Sat, 20 Jul 2019 17:22:00 +0200
Message-ID: <5490267.oBufKZg01J@lenovodario>
In-Reply-To: <20180926143449.bnqliemloqw7fuyv@t530.fritz.box>
References: <1522693621-3124-1-git-send-email-agk@godking.net>
 <20180926143449.bnqliemloqw7fuyv@t530.fritz.box>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (nanodario[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.128.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1horBZ-009hMB-72
Subject: Re: [ibm-acpi-devel] [PATCH] Add Second Fan Support for Thinkpad P50
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
Cc: Alexander Kappner <agk@godking.net>, ibm-acpi@hmh.eng.br,
 linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 ibm-acpi-devel@lists.sourceforge.net, dvhart@infradead.org, andy@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

I have a Thinkpad P51 (BIOS version: N1UET74W, EC version: N1UHT26W).
This patch works on my computer and I can read both fan speeds through sysfs 
interface.

On 2018-09-26 16:34:19 CEST, Stefan Assmann wrote:
> Is there a way to actually control the second fan? There's pwm1, but no
> pwm2. And pwm1 only affects fan1.

I have played with the driver code and I noticed that it is possible to 
control both fans independently (unlike what the "Fan subdriver" comment in 
the code says).
You can do that simply by calling fan_select_fan1 or fan_select_fan2, to 
select a fan to be controlled, before calling fan_set_level. All control 
parameters (disengaged, manual speeds, auto) are fully independent.

What is not smooth is reading back current control parameters from register 
0x2f (like fan_pwm1_show or fan_pwm1_enable_show actually do), because the EC 
ignores which fan is currently selected and it always returns the last written 
value.


Distinti Saluti/Best Regards,
Dario Messina




_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
