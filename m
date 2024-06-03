Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1138D8180
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  3 Jun 2024 13:47:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1sE69J-0002DW-Fs;
	Mon, 03 Jun 2024 11:46:49 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <nfsmwlin@gmail.com>) id 1sE69H-0002DN-SK
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 03 Jun 2024 11:46:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YImgWZlrq3ZcfI7EheeH/5YorxqFbgh9vOHQNA2FNtE=; b=UJ2cwBT5epBrJ/9DcifMiKRvgg
 QEobrBfE2owtUH628qPF6i0iJDIkpy6+d9M5RYu5UGgNqtZa6gQ4Stv2ZOlNKavJshB+JpWOilK87
 Xi3AgG2MqEd+BP2ZAh/GaX2edx80vHlnfovSMlZxgWZbc2NerfhIT2kl90cSfLVSJeaM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=YImgWZlrq3ZcfI7EheeH/5YorxqFbgh9vOHQNA2FNtE=; b=S
 T9FJU1Drw0mfuRdNro1R2GFLcd2ybBy/tYmNE58UX8TkXIYSa6urozziJbYF/s3SDTweENR4jtGsZ
 7j7SbNYjdM63eAyPtwwYZse63gKjxCqbwhz4TqcJU+H0Ny/rjiOdWlxIJLS2m5Ssab92NgJex2XVh
 s2f8Hc9efGuVzy88=;
Received: from mail-yw1-f174.google.com ([209.85.128.174])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sE69I-0000nG-Bj for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 03 Jun 2024 11:46:48 +0000
Received: by mail-yw1-f174.google.com with SMTP id
 00721157ae682-628c1f09f5cso39773627b3.1
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 03 Jun 2024 04:46:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1717415202; x=1718020002; darn=lists.sourceforge.net;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=YImgWZlrq3ZcfI7EheeH/5YorxqFbgh9vOHQNA2FNtE=;
 b=DPyWR5JizlHwBURI9fN/awwUymjx+dZ677lP3k/PTvwKeDVjgqgsMrPc4VypiIklMf
 mznStBwUQ9cx4BshqRM0t60ryxl+8NjL3wdncxC9o6W3LMAOZLijvYR42mv99lUbigIE
 YAMc84rpxtB8p57idLlPObxa/SbgM0+Ozus1g6QBdlPJVxlWv7Mqr7lG0SFK7sWl3j/Z
 WO4yB/sCLk3zeJtfPnjOkoBN7xFkADEHYVMXKOn+BGn2VGGVruvSRW3wRGZObVD32JuN
 0d4GFhSQPwkab7MbWozv3S+pMZ/1bpIwXNl9gn/SpWEvk5iTle4IYOQV2qazv+ESzUQH
 qI/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1717415202; x=1718020002;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=YImgWZlrq3ZcfI7EheeH/5YorxqFbgh9vOHQNA2FNtE=;
 b=u58unsz5tMarmYgCSM+CRvU3pOhiYbASt9BYEi0YLwG5EPW2MvBJRaAMldxiIemBH6
 O2QIYG6SGChNegaPr5EYL7TJVfYDXzedmUMHHs62K4d5wTRAqZKnxVaciCtnXdStq0xZ
 pGOgf1gca0XtTkaMOiD4uQXiGhuWXuO6zp9XS0OmE9XJtFB2zrrh+KXK3NI75FZu8nvZ
 AxTK1bbgJ54d2kcxmQlTdQCU+6VOpqRNVfDz6Mizj+Z/MbDFr5RbMNOd+dPbQidTvNpV
 WdxsZp0O46p6EJCN3NjrRmttet67o28y8nsmE8Omah1Uo/4axFr+XE153M64yDCdlaUd
 g2ww==
X-Gm-Message-State: AOJu0YyfxhCLVy4taiYmErXGXuSbQZxDiVzTqLR/Uxq21TykQUFCJpQi
 mM7qPniXLWDn25hzGeV9xs9ckr89zEfxXpTXKG5gSfk5GnN3FnVcgs+dXmUtAc0FttoCAtMC9tS
 13CrDWBSAL+m10GhB9yg+AUFaJiCMPQ==
X-Google-Smtp-Source: AGHT+IGotAhV2oDCLP0SxEF21WOkowDnaA+xDZCI5gAjY7+9XUR5PCXAEFiqzjldYQCo/ucXOHtwnDryeicEJaUeyiY=
X-Received: by 2002:a05:690c:98f:b0:61a:ca09:dae3 with SMTP id
 00721157ae682-62c79725357mr83170967b3.26.1717415201509; Mon, 03 Jun 2024
 04:46:41 -0700 (PDT)
MIME-Version: 1.0
From: Pellaeon Lin <nfsmwlin@gmail.com>
Date: Mon, 3 Jun 2024 19:46:30 +0800
Message-ID: <CADjcfxZy3LPTmapAvqO7uNZx1Dow5JscyG3L-J3_YB1zaCf1WQ@mail.gmail.com>
To: ibm-acpi-devel@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, I have a ThinkPad X13 Gen 2 AMD with PrivacyGuard. But
 by pressing the combination key Fn+D it does not toggle the PrivacyGuard,
 the PrivacyGuard stays on. I've tested: - Fn+D does toggle PrivacyGuard when
 I'm in the BIOS - Fn+D has no effect on Ubuntu 22.10, Ubuntu 23.04, Ubuntu
 23.10, Ubuntu 24.04 and Fedora 40 (except Ubuntu 23.10 and 24.04, all was
 tested using L [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [209.85.128.174 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.128.174 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.128.174 listed in bl.score.senderscore.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [nfsmwlin[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.174 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sE69I-0000nG-Bj
Subject: [ibm-acpi-devel] PrivacyGuard doesn't work even by sending ACPI
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
Content-Type: multipart/mixed; boundary="===============8813226770364982347=="
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

--===============8813226770364982347==
Content-Type: multipart/alternative; boundary="0000000000000498400619fae327"

--0000000000000498400619fae327
Content-Type: text/plain; charset="UTF-8"

Hi,

I have a ThinkPad X13 Gen 2 AMD with PrivacyGuard. But by pressing the
combination key Fn+D it does not toggle the PrivacyGuard, the PrivacyGuard
stays on. I've tested:

- Fn+D does toggle PrivacyGuard when I'm in the BIOS
- Fn+D has no effect on Ubuntu 22.10, Ubuntu 23.04, Ubuntu 23.10, Ubuntu
24.04 and Fedora 40 (except Ubuntu 23.10 and 24.04, all was tested using
LiveUSB)

In all of the Linux cases, I can confirm that by pressing Fn+D, the status
value of /proc/acpi/ibm/lcdshadow actually changes.

I've always thought this was a Ubuntu-specific issue, until I tested Fedora.

I tested this further by installing the acpi-call-dkms package on Ubuntu
and issues the following call:

echo '\_SB.PCI0.LPC0.EC0.HKEY.SSSS 0x1' | sudo tee /proc/acpi/call

It returned 0 (which should mean success), but PrivacyGuard is still ON.
Then I tried to call it with 0x0:

echo '\_SB.PCI0.LPC0.EC0.HKEY.SSSS 0x0' | sudo tee /proc/acpi/call

Also getting 0 in return. PrivacyGuard is still ON.

Based on my limited understanding of ACPI and the kernel, at this point it
might be a firmware issue? (fwupdmgr shows that there is no available
updates) But based on my reading and understanding of thinkpad_acpi.c, the
particular ACPI call that I issued is also how the Linux driver currently
operates the PrivacyGuard feature, which means the driver might also be
affected by this issue. So I'm hoping someone could help me debug this
further, or point out anything that I'm not understanding correctly.

Thanks!

--0000000000000498400619fae327
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>I have a ThinkPad X13 Ge=
n 2 AMD with PrivacyGuard. But by pressing the combination key Fn+D it does=
 not toggle the PrivacyGuard, the PrivacyGuard stays on. I&#39;ve tested:</=
div><div><br></div><div>- Fn+D does toggle PrivacyGuard when I&#39;m in the=
 BIOS</div><div>- Fn+D has no effect on Ubuntu 22.10, Ubuntu 23.04, Ubuntu =
23.10, Ubuntu 24.04 and Fedora 40 (except Ubuntu 23.10 and 24.04, all was t=
ested using LiveUSB)<br></div><div><br></div><div>In all of the Linux cases=
, I can confirm that by pressing Fn+D, the status value of /proc/acpi/ibm/l=
cdshadow actually changes.</div><div><br></div><div>I&#39;ve always thought=
 this was a Ubuntu-specific issue, until I tested Fedora.</div><div><br></d=
iv><div>I tested this further by installing the acpi-call-dkms package on U=
buntu and issues the following call:<br><br>echo &#39;\_SB.PCI0.LPC0.EC0.HK=
EY.SSSS 0x1&#39; | sudo tee /proc/acpi/call<br></div><div><br></div><div>It=
 returned 0 (which should mean success), but PrivacyGuard is still ON. Then=
 I tried to call it with 0x0:</div><br><div>echo &#39;\_SB.PCI0.LPC0.EC0.HK=
EY.SSSS 0x0&#39; | sudo tee /proc/acpi/call</div><div><br></div><div>Also g=
etting 0 in return. PrivacyGuard is still ON.</div><div><br></div><div>Base=
d on my limited understanding of ACPI and the kernel, at this point it migh=
t be a firmware issue? (fwupdmgr shows that there is no available updates) =
But based on my reading and understanding of thinkpad_acpi.c, the particula=
r ACPI call that I issued is also how the Linux driver currently operates t=
he PrivacyGuard feature, which means the driver might also be affected by t=
his issue. So I&#39;m hoping someone could help me debug this further, or p=
oint out anything that I&#39;m not understanding correctly.<br></div><div><=
br></div><div>Thanks!<br></div></div>

--0000000000000498400619fae327--


--===============8813226770364982347==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============8813226770364982347==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

--===============8813226770364982347==--

