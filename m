Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BB578D8870
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  3 Jun 2024 20:08:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1sEC6D-0003sk-Gp;
	Mon, 03 Jun 2024 18:08:01 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <trevi55@gmail.com>) id 1sEC6B-0003sT-Tk
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 03 Jun 2024 18:08:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Subject:References:In-Reply-To:Message-ID:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gzt7Cc3p1nrBVC/lF2fLLA1bBiKiTKLVgH9WUXugDj4=; b=D5ZthVWmhmZa6sFFfKG/k06AJt
 yhbD2Y3W8O8j2i+YNEDf6yKqJQz46XVXqZabaQ83AeH9IXo1L/ou8egSikL6oih2yieXm8oNW7XLE
 nO47wE8FVfXaq5ZKt2Azs/HCOuKiw/I6xd6ETkNeRRmwIpAC+/c+tF5NPdNftaMRUG5o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:References:
 In-Reply-To:Message-ID:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gzt7Cc3p1nrBVC/lF2fLLA1bBiKiTKLVgH9WUXugDj4=; b=X6xxuBaDQz+9sebQ3OI25GdOIG
 jFBssmsMoqKtf57v5JmpxO2WFuNLSWSYIYEMYS+UPeMt7M97M0eeb9H2l2Djq3dd/K0zpzI3Q5H9P
 lq8xvjAuBQ8xDXc3fH2FywjXzkgwNvgD5d1tPD8gX0gn2VCEJyHpStcOiGiRzq0pFOC4=;
Received: from mail-wm1-f44.google.com ([209.85.128.44])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sEC6C-0002GC-2Y for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 03 Jun 2024 18:08:00 +0000
Received: by mail-wm1-f44.google.com with SMTP id
 5b1f17b1804b1-4213485697fso21819625e9.1
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 03 Jun 2024 11:07:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1717438068; x=1718042868;
 h=content-disposition:content-transfer-encoding:mime-version:subject
 :references:in-reply-to:message-id:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=gzt7Cc3p1nrBVC/lF2fLLA1bBiKiTKLVgH9WUXugDj4=;
 b=QPTRYthHS/2nsEqjO1uTijPJXESqi1A5zB445D1japGzgDhq2TMdzJi4IM51T+PXzI
 bBkYybqqhHgPzXtHHt/4XUElYJvkAdAH3BvuZUZj1eIQC52qVvSn4XzhU/KaJahFJVBW
 xg/aM7PfdtcETkvcfpvUzq/ye+CE2Owv/UvcGnuOvu/lrEsQzmB9cbSrRgvNygAsjLBX
 PSpm8A4q3TsSL+UA8TGjh0zJpQ8oObtoWoRS/EhmZGUANxpbUsAdpguO/FID6eidsyh5
 cjtDBGyl4j15p5r149dTrCpSi1TobER1RHWjICia36865db2r3/hElSijSVivE60Rx5D
 vKmw==
X-Gm-Message-State: AOJu0YzluVuRUTa5pMpQdYGyTbYXSNBAmYwcaZvpNmZPBjyk2zh6bQsn
 UYlduLuL8YfJbhO+weZc5a56llkZwpQbEroDjomtRJ/H+nItzF2D
X-Google-Smtp-Source: AGHT+IEDwLgifPaP+2x63WgKxylAE0u/6feUt3msvPHq6yh9ASPbmi57WJrnKA0H/gCgKFNvjU0dmA==
X-Received: by 2002:a05:600c:45cb:b0:41f:fca0:8c04 with SMTP id
 5b1f17b1804b1-4212e04998fmr76294095e9.11.1717438067354; 
 Mon, 03 Jun 2024 11:07:47 -0700 (PDT)
Received: from tricky (84.127.152.83.dyn.user.ono.com. [84.127.152.83])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42132d5308csm111115325e9.35.2024.06.03.11.07.46
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 03 Jun 2024 11:07:46 -0700 (PDT)
Date: Mon, 3 Jun 2024 20:07:40 +0200
From: "=?utf-8?Q?Marco_Trevisan_(Trevi=C3=B1o)?=" <mail@3v1n0.net>
To: Pellaeon Lin <nfsmwlin@gmail.com>
Message-ID: <8ADA47CC-8883-4977-AC6E-C4BCD7365EB0@getmailspring.com>
In-Reply-To: <CADjcfxZy3LPTmapAvqO7uNZx1Dow5JscyG3L-J3_YB1zaCf1WQ@mail.gmail.com>
References: <CADjcfxZy3LPTmapAvqO7uNZx1Dow5JscyG3L-J3_YB1zaCf1WQ@mail.gmail.com>
X-Mailer: Mailspring
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -4.5 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, Not sure if something changed or it is different in newer
 models,
 but the privacy screen feature so far has been exposed as a KMS property
 you can inspect and set with tools like proptest (in libdrm-t [...] 
 Content analysis details:   (-4.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.85.128.44 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.128.44 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.128.44 listed in bl.score.senderscore.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.44 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [trevi55[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [trevi55[at]gmail.com]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sEC6C-0002GC-2Y
Subject: Re: [ibm-acpi-devel] PrivacyGuard doesn't work even by sending ACPI
 commands directly
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
Cc: "=?utf-8?Q?ibm-acpi-devel=40lists.sourceforge.net?="
 <ibm-acpi-devel@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

Not sure if something changed or it is different in newer models, but
the privacy screen feature so far has been exposed as a KMS property you
can inspect and set with tools like proptest (in libdrm-tests package
for what concerns ubuntu)

Cheers

On giu 3 2024, at 1:46 pm, Pellaeon Lin <nfsmwlin@gmail.com> wrote:

> Hi,
> 
> I have a ThinkPad X13 Gen 2 AMD with PrivacyGuard. But by pressing the
> combination key Fn+D it does not toggle the PrivacyGuard, the
> PrivacyGuard stays on. I've tested:
> 
> - Fn+D does toggle PrivacyGuard when I'm in the BIOS
> - Fn+D has no effect on Ubuntu 22.10, Ubuntu 23.04, Ubuntu 23.10,
> Ubuntu 24.04 and Fedora 40 (except Ubuntu 23.10 and 24.04, all was
> tested using LiveUSB)
> 
> In all of the Linux cases, I can confirm that by pressing Fn+D, the
> status value of /proc/acpi/ibm/lcdshadow actually changes.
> 
> I've always thought this was a Ubuntu-specific issue, until I tested Fedora.
> 
> I tested this further by installing the acpi-call-dkms package on
> Ubuntu and issues the following call:
> 
> echo '\_SB.PCI0.LPC0.EC0.HKEY.SSSS 0x1' | sudo tee /proc/acpi/call
> 
> It returned 0 (which should mean success), but PrivacyGuard is still
> ON. Then I tried to call it with 0x0:
> 
> echo '\_SB.PCI0.LPC0.EC0.HKEY.SSSS 0x0' | sudo tee /proc/acpi/call
> 
> Also getting 0 in return. PrivacyGuard is still ON.
> 
> Based on my limited understanding of ACPI and the kernel, at this
> point it might be a firmware issue? (fwupdmgr shows that there is no
> available updates) But based on my reading and understanding of
> thinkpad_acpi.c, the particular ACPI call that I issued is also how
> the Linux driver currently operates the PrivacyGuard feature, which
> means the driver might also be affected by this issue. So I'm hoping
> someone could help me debug this further, or point out anything that
> I'm not understanding correctly.
> 
> Thanks!
> _______________________________________________
> 
> ibm-acpi-devel mailing list
> 
> ibm-acpi-devel@lists.sourceforge.net
> 
> https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
