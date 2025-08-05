Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A371BB1BAD8
	for <lists+ibm-acpi-devel@lfdr.de>; Tue,  5 Aug 2025 21:19:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iGRwqlDknSAUbjlXPZ6Ll/ZrHOwamKefrkE0ksiEFBs=; b=BDEi5vvOnSpJ8U3nuoTjE/rbTo
	zJjURJH56YjMacuAJXSxHxQ+5kjV5kDP0S5qX2QvQF3/hHuj2XXg100YW0cr36cGu3ZjuLXIBFbMJ
	KtqWXVd3MI+L+KJgQuRvnkCSeyMKY/bwTcSMVHtpJJAJBMC79rYvam6KoqrgnEIG9+74=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1ujNBQ-0007XL-3o;
	Tue, 05 Aug 2025 19:18:48 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <gdamjan@gmail.com>) id 1ujNBH-0007Ww-3T
 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 05 Aug 2025 19:18:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:To:Subject:
 Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NC3qCDTHzb9l3E3vAAbv1t+24h2GdsAUmF8PS8GoloE=; b=Ug7B1zKUVIFkr81DzvwMLndjPj
 er4/NCqzqxgLmwQqNe8KNMU6Fspanx6/lmhYSM3yiMQaXNuhL7dkf8SQDyjStY+8soVOp0j5xynaz
 OFgOJbdr1RF+F0+b1ODMxGioGhBaqNPWsrqjy9ne+46ztnTejPDLgYymasUSQHf6Z36I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NC3qCDTHzb9l3E3vAAbv1t+24h2GdsAUmF8PS8GoloE=; b=JBHPSczh4/6oApI+16g1F8NIbT
 hxHSywgiDY6Dj8q6dyHH5ocXr0geBao7gTk9msG0Hoow0/TEfE1xjn5LML6cGx55SZ0O+J5/LJjkG
 y9DtDDpzHVabbcoNBRYLgOEnsRBYQjppqUaexjhaGntzpZ8Yo9omk48bcg7cTjqT2jAo=;
Received: from mail-yw1-f173.google.com ([209.85.128.173])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ujNBG-0008MC-MG for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 05 Aug 2025 19:18:39 +0000
Received: by mail-yw1-f173.google.com with SMTP id
 00721157ae682-71a3935fa8dso33069977b3.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 05 Aug 2025 12:18:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1754421512; x=1755026312; darn=lists.sourceforge.net;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=NC3qCDTHzb9l3E3vAAbv1t+24h2GdsAUmF8PS8GoloE=;
 b=nr0k27FzwPGLOyeiBxZprXP8ZTiwaq1HS82Bf6FYeW1WdoXYe5McwvrqRIEAWAXvUQ
 7GXdIXCA7LLwLWbzt4/8fI7B8u2UQ9U/2qgdF/VZV8GhOvZc3OqF5P2bttL65gkS3V3G
 NJIbjoIXZzmMSZURl46Xa1fXQvhjvdRtYQ33Ub/fTN/xtKl5UhDN026u7FmtjAz++1u/
 gKBl0rVRj9TepaQii0UpWVGVueT0M6GbVQwZN9Au/YiQhuSV+EplThf152DfTDfHvWsZ
 bEna/erO3AhrBIOCRQeaiylMNbwuNn1wlKxSPvWAkUOoK1PL1ncngvu3Us1jX2BX97Cp
 7G8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754421512; x=1755026312;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=NC3qCDTHzb9l3E3vAAbv1t+24h2GdsAUmF8PS8GoloE=;
 b=roOghucrVVVpdlZPhr1xejVHbxmCA/i+ota7UN8J1fmq4QjwehLpPUI8Ne212wtWQ2
 OjTbvMulhdm8xhlD/ln5LelpPnak9vmBveZIL+dAIvDu6bs8NfZj2S5QoFtfWF3HoLhK
 bc0RTaxQA9ZjNZIsHVBhzCI0QzNHhZSxj4pQumrXVwv92nLLv/aF59t4cD6Vxok0CVxW
 /TBmNbkgLwoqDj9dXqf3ZIkbY2IhlKYwRiME+ml7EgvXEqlI1o6ZW5KWiLAanRao595H
 a1B2Cp8UNasAZefwhaihhZTx9cu+QeEDYyAhN3KgDfIx/dbW0xKSDrIGkPFNUfG037zd
 +dxQ==
X-Gm-Message-State: AOJu0YxdtA+/BhfvX9fQxX2U3+cs4r5cUuR4YAWgwW5vkONZZxwx9stZ
 cc7Or19doVxm1xcmwDbnfCSXwgxNrG9A/g2KpwOTT9WfCobqACUDC7Fq0pWuBEPtcjHFk+AwoLZ
 TWX1evm6+yaYTrXTuL2NsB54+54luwFg6ZvYg67Y=
X-Gm-Gg: ASbGncsyPc/ZKqi1iOqGf/fdCw+zhDrp2s5aTSZ8EDfQfYfURQl2zV6yflt0Qh0FEc/
 ugJqi8Ta6mZzWPxoFgJBjwl1AeZHYfs73dLoPlllpV1R1dgitBaUUqf0KPL4cFgtM5WzfuSIxdJ
 50YMM//S8SDhpVT9FJLwjDL1UuLFQpjILY21ijrS6PBoinCT6J9EXeuC40/aFhnEOWxBsq/y5LG
 EmxEHIviIxsuuhXkw==
X-Google-Smtp-Source: AGHT+IGwG60harcvOa+RMN8f8Eg+MXPblJ0t4YMizgrdM9nhthzmGCAPVww+wTErj2B6NVuaSVuAwZbwr9aC0Wjs9GI=
X-Received: by 2002:a05:690c:6102:b0:712:c14a:a388 with SMTP id
 00721157ae682-71bc96e0390mr5861397b3.7.1754421512583; Tue, 05 Aug 2025
 12:18:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAEk1YH4dFncVBuf7JGEdG8Nrf9Bnyy0XbHF6daQiCWrogN=UGA@mail.gmail.com>
 <9c07c492-1351-4239-b17f-4bd8dda6f71b@app.fastmail.com>
In-Reply-To: <9c07c492-1351-4239-b17f-4bd8dda6f71b@app.fastmail.com>
From: Damjan Georgievski <gdamjan@gmail.com>
Date: Tue, 5 Aug 2025 21:17:51 +0200
X-Gm-Features: Ac12FXxXRaDoGjCAROonuZ6O7sIkFzcR7_014Oc5nu6ztGHPIzjt8egyKOgJohw
Message-ID: <CAEk1YH47ZgJunEbbZzXqxwpvFggxu44CaB1BtAbdQWfo16w8tw@mail.gmail.com>
To: ibm-acpi-devel@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: > I assume you're using your own config instead of a standard
 one from a distro? I checked with both Ubuntu and Fedora (that I have on
 my system currently) and they have this option enabled - but they [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [gdamjan(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.173 listed in wl.mailspike.net]
X-Headers-End: 1ujNBG-0008MC-MG
Subject: Re: [ibm-acpi-devel] SND_HDA_GENERIC_LEDS/SND_CTL_LED dependency of
 config THINKPAD_ACPI
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

> I assume you're using your own config instead of a standard one from a distro? I checked with both Ubuntu and Fedora (that I have on my system currently) and they have this option enabled - but they also have Realtek (and others) enabled which would have pulled it in.

Indeed I'm using my own config, so to decrease compile times while I
experiment with kernels (can't make that d..n camera work good)

> I believe the X9-14 uses the Cirrus codec so my guess is we should be adding this to the Cirrus Kconfig. Let me just check with the Cirrus folk if they have any thoughts/concerns.

Ok, thanks for that. I was confused where it belongs.

> As a heads up - if you're using the X9-14 keep an eye on this proposed fix:
> https://lore.kernel.org/linux-input/20250803065726.2895470-1-aaron.ma@canonical.com/T/#t
> It fixes a rare kernel crash condition we've been seeing on suspend/resume

Oh, that ... I might have hit that, or rather, it might have hit me :D
thanks!!!


-- 
damjan


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
