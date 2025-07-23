Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E65CFB0ECCA
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 23 Jul 2025 10:09:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Cc:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:
	From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YvSWy1eYKkntutF5UvQWdkonj7lypnrJnY3Zwba2Z9k=; b=QMbeSZbLWqjR9FddRuz+j15VSG
	pDc2gkCmeeS1xKkeeipbpj+bEraf9VexMEqcri+vfCgsKlhoMeIhFDwRVz+CZrQ9o2rkWN+jKfHLJ
	dsTwNycCM46pEUMxqy57muXSWMh+Lp442r0RxAlnjvpCpXIA4Z0KlH+PjZWVXIQBEGL0=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1ueUWO-0001ct-ES;
	Wed, 23 Jul 2025 08:08:17 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <nfsmwlin@gmail.com>) id 1ueUWN-0001ch-HO
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 23 Jul 2025 08:08:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dD1GWnDqJXrGhTkG0EOp+iB8bpfRI1eW1vAYVjQYHpk=; b=LcPcuNPlXEGnEsBUJdHF4Vpy2V
 Elhd8v9gX7koRkbDoO7PO8+o+MD09zNmB+/X94QpY/eZJjNLmy6sjPNo4Dst8Ac1aO2SRWANLIgeX
 U75aAhjdGhSwhHg3tOVc4lQJeEvi5O7mThOFRugROW7pOuWz6u9060Tjo31ZWYeavJ+I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dD1GWnDqJXrGhTkG0EOp+iB8bpfRI1eW1vAYVjQYHpk=; b=B6lTqK0S3zDJyrt2F5+Y/pxd1O
 ta1fyhWW9k3bOtXR4mUos1wHM/BdGGzTZZhQjsQytzP84jLJeE3tq1PVT8WBWr3Ck3S9yXVY+O+BO
 81WTJsA+HPzRdzY2hTBgoq/XX2rskCgs1/3gYVTrXDT+JM/pwKjS6LV/o0neYQPhop3Q=;
Received: from mail-yb1-f179.google.com ([209.85.219.179])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ueUWN-0005sG-J5 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 23 Jul 2025 08:08:16 +0000
Received: by mail-yb1-f179.google.com with SMTP id
 3f1490d57ef6-e8d906ab993so2969219276.2
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Wed, 23 Jul 2025 01:08:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1753258090; x=1753862890; darn=lists.sourceforge.net;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=dD1GWnDqJXrGhTkG0EOp+iB8bpfRI1eW1vAYVjQYHpk=;
 b=ZUiMEyk0Si9Y1hZFpxvnp/UlN2RGHuH5ujNHvy7v4W+nCgIXQoQ8iZPeQ5kC+cxwWA
 t2PQh8x3qRSFgeNwI3b03ULmS6mcgE5o2+/B/xQgxKVSvKkU6pxIYkxroT/ucjKr6Sho
 iYpcEX9WQS55WbpoO2nJgrfTlPkgwn3QoKE/zfTti1vZu8blrz7UQLW4oRlNjd6U6hRz
 MAw9JfAb/MwhIa6MErVuMSG3+qJsRQ6zNhMA5FOUfHS3uL/Iw93aUUyp8to4RC7IfeBM
 iLbFVHVo1WWo+alGCBYr1LrxnncGys9DoA1KOvVJDZTMKOSn5rTumvNzRmXelAu0VOvV
 XAnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753258090; x=1753862890;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=dD1GWnDqJXrGhTkG0EOp+iB8bpfRI1eW1vAYVjQYHpk=;
 b=rBowUladzixpir+QwA+DtDQg4jwNF6jC4TOfZ6jgizgo76VAVQaBiAltQyFXAHb5Cp
 9mXxZ77Vr+S+6MG99G90PHfELU4JiC/hTu5hw1vRDuZ68u9dtIgZo1g39pb1luxoCjzS
 CB780nVQMbsYQRWXfsbwJ+n/BEEm8qNJ7EbZLSbuzNlrn47nAl5NgfTvog0r3Ttt59IT
 DycM+HB0kHUYlVeD9mWNP5ofzi24wv4/ZzdwUFbMcdvC8BBQetjvvMxFV9U4cGg76xHj
 O8VUPGwy9bJbpZ81hqWpDpqDw7k6HHKbFEktg9+El5gqaEmCk4sWI3t3D7Z4ZfHWP3ar
 FypQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXE6n1AhNi566xyMK38JXycun7G8ZTCUSnoALG3hOt+FvtF29LSJkqJXGWUhkBmtfBwoJig9KfYXAjtEP9KFw==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yw48V8TMjFjuCC57dMOfvSTCh81G6J4C0fpSwrVhJDXAddFYOBz
 oKdC/Eo6dboK+xRWbd2puT3xfOnh0ALNOMBZ4z//3RgbA3tvYbpHHHFhkQSrP14nTVEupsmwG5V
 RcpQCTAP0/XPd3XOSN/fDRhqdxuC74ME=
X-Gm-Gg: ASbGncsovOAliOvWFTByoulFGDQaNuv8YwIQtQhJABAiW8WRM6nzTJqozTvSpurbtyF
 yEq1L0yxoxu2le4rFmZ6h+7y6XW9F0Oj9OKWNwyveLtnUrvoxgHdHla2ExKie3teTTaBVQcgNls
 sMJ0K+rzYZGnmP1v4aYrU6YnYhG88dzKa1NAO/N+MgxePRe4Ocq1WZRAwE/Dy8tAk6xTyIdrqEW
 W5Xpi68+/aIm9skQQ==
X-Google-Smtp-Source: AGHT+IG8W9G8hCOOo8w0A3SNxT1n4EV+/YDh0uyng+XTWnCtKJLjsIE0GR25lLuS58dHyui27Raux1lmx4r9G7L3yJc=
X-Received: by 2002:a05:6902:1b89:b0:e8b:9340:aa13 with SMTP id
 3f1490d57ef6-e8dc561d88dmr2450508276.0.1753258089678; Wed, 23 Jul 2025
 01:08:09 -0700 (PDT)
MIME-Version: 1.0
References: <CADjcfxZy3LPTmapAvqO7uNZx1Dow5JscyG3L-J3_YB1zaCf1WQ@mail.gmail.com>
 <8ADA47CC-8883-4977-AC6E-C4BCD7365EB0@getmailspring.com>
 <CADjcfxYCUfKmQuZwhhPZvt+TjbWc1ChKdq55QnCF5VRx3stBnQ@mail.gmail.com>
 <SEZPR03MB795996A1F0F4CA3A7DA69A638C922@SEZPR03MB7959.apcprd03.prod.outlook.com>
 <CADjcfxYo-Lry3T+3ywxqjD4PzqqMwFauJtK9qbOgVqLmkh5pvg@mail.gmail.com>
 <OSCPR01MB14370F089948D35715A6B984A8C7CA@OSCPR01MB14370.jpnprd01.prod.outlook.com>
In-Reply-To: <OSCPR01MB14370F089948D35715A6B984A8C7CA@OSCPR01MB14370.jpnprd01.prod.outlook.com>
From: Pellaeon Lin <nfsmwlin@gmail.com>
Date: Wed, 23 Jul 2025 16:07:59 +0800
X-Gm-Features: Ac12FXzQMuqE8wtBXMe9kP9hJnYuESuuuEK3PPbENBYoR0-hjZ29Ae5e1PMtMv4
Message-ID: <CADjcfxbtmRmgBYhj+5TCkDZw3TOGLy91V9FdXc251NpOHpFYgg@mail.gmail.com>
To: Nitin Joshi1 <njoshi1@lenovo.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi all,
 I totally understand that you might have other priorities, 
 but just reminding you about this issue again in case you forget! Thank you,
 Pellaeon 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [nfsmwlin(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.179 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1ueUWN-0005sG-J5
Subject: Re: [ibm-acpi-devel] [External] Re: PrivacyGuard doesn't work even
 by sending ACPI commands directly
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
Cc: "ibm-acpi-devel@lists.sourceforge.net"
 <ibm-acpi-devel@lists.sourceforge.net>,
 =?UTF-8?Q?Marco_Trevisan_=28Trevi=C3=B1o=29?= <mail@3v1n0.net>
Content-Type: multipart/mixed; boundary="===============7628666556972254040=="
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

--===============7628666556972254040==
Content-Type: multipart/alternative; boundary="000000000000a2948a063a943543"

--000000000000a2948a063a943543
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

I totally understand that you might have other priorities, but just
reminding you about this issue again in case you forget!

Thank you,
Pellaeon

Nitin Joshi1 <njoshi1@lenovo.com> =E6=96=BC 2025=E5=B9=B46=E6=9C=8820=E6=97=
=A5 =E9=80=B1=E4=BA=94 =E4=B8=8B=E5=8D=884:20=E5=AF=AB=E9=81=93=EF=BC=9A

> Thanks Pellaeon !
>
>
>
> Even I can reproduce it (using Ubuntu 24.04) but I can see it gets toggle=
d
> correctly using below sysfs:
>
> cat /sys/class/drm/privacy_screen-thinkpad_acpi/hw_state
>
>
>
> Marco =E2=80=93 Do you have any comment to debug this?
>
> Thank you very much !
>
>
>
> Thanks & Regards,
>
> Nitin
>
>
>
> *From:* Pellaeon Lin <nfsmwlin@gmail.com>
> *Sent:* Thursday, June 19, 2025 10:56 PM
> *To:* Nitin Joshi1 <njoshi1@lenovo.com>
> *Cc:* ibm-acpi-devel@lists.sourceforge.net
> *Subject:* Re: [External] Re: [ibm-acpi-devel] PrivacyGuard doesn't work
> even by sending ACPI commands directly
>
>
>
> Hi all,
>
>
>
> I'd like to bring up this issue again. I just upgraded to Ubuntu 25.04,
> kernel 6.14.0-15-generic and I'm still having the same issue (the same AC=
PI
> call still have no effect).
>
>
>
> Thanks,
>
>
>
>
>
> Nitin Joshi1 <njoshi1@lenovo.com> =E6=96=BC 2024=E5=B9=B49=E6=9C=882=E6=
=97=A5 =E9=80=B1=E4=B8=80 =E4=B8=8B=E5=8D=889:42=E5=AF=AB=E9=81=93=EF=BC=9A
>
> Hello Pellaeon,
>
>
>
> >> @Mark: has the team replied anything?
>
> Mark has informed me regarding this and I am yet to check this . Sorry fo=
r
> this !
>
> I will try to get hold of system and try this within this week , if I fin=
d
> AMD e-privacy guard machine .
>
>
>
> Thanks
>
>
>
> *From:* Pellaeon Lin <nfsmwlin@gmail.com>
> *Sent:* Sunday, September 1, 2024 2:32 PM
> *To:* ibm-acpi-devel@lists.sourceforge.net
> *Subject:* [External] Re: [ibm-acpi-devel] PrivacyGuard doesn't work even
> by sending ACPI commands directly
>
>
>
> Hi,
>
>
>
> @Mark: has the team replied anything?
>
>
>
> @Marco: `proptest` on my system did not return any property related to
> privacy screen, is this normal? (I ran `proptest | grep -i privacy`, whic=
h
> returned empty result.)
>
>
>
> Thanks,
>
>
>
> Marco Trevisan (Trevi=C3=B1o) <mail@3v1n0.net> =E6=96=BC 2024=E5=B9=B46=
=E6=9C=884=E6=97=A5 =E9=80=B1=E4=BA=8C =E4=B8=8A=E5=8D=882:07=E5=AF=AB=E9=
=81=93=EF=BC=9A
>
> Hi,
>
> Not sure if something changed or it is different in newer models, but
> the privacy screen feature so far has been exposed as a KMS property you
> can inspect and set with tools like proptest (in libdrm-tests package
> for what concerns ubuntu)
>
> Cheers
>
> On giu 3 2024, at 1:46 pm, Pellaeon Lin <nfsmwlin@gmail.com> wrote:
>
> > Hi,
> >
> > I have a ThinkPad X13 Gen 2 AMD with PrivacyGuard. But by pressing the
> > combination key Fn+D it does not toggle the PrivacyGuard, the
> > PrivacyGuard stays on. I've tested:
> >
> > - Fn+D does toggle PrivacyGuard when I'm in the BIOS
> > - Fn+D has no effect on Ubuntu 22.10, Ubuntu 23.04, Ubuntu 23.10,
> > Ubuntu 24.04 and Fedora 40 (except Ubuntu 23.10 and 24.04, all was
> > tested using LiveUSB)
> >
> > In all of the Linux cases, I can confirm that by pressing Fn+D, the
> > status value of /proc/acpi/ibm/lcdshadow actually changes.
> >
> > I've always thought this was a Ubuntu-specific issue, until I tested
> Fedora.
> >
> > I tested this further by installing the acpi-call-dkms package on
> > Ubuntu and issues the following call:
> >
> > echo '\_SB.PCI0.LPC0.EC0.HKEY.SSSS 0x1' | sudo tee /proc/acpi/call
> >
> > It returned 0 (which should mean success), but PrivacyGuard is still
> > ON. Then I tried to call it with 0x0:
> >
> > echo '\_SB.PCI0.LPC0.EC0.HKEY.SSSS 0x0' | sudo tee /proc/acpi/call
> >
> > Also getting 0 in return. PrivacyGuard is still ON.
> >
> > Based on my limited understanding of ACPI and the kernel, at this
> > point it might be a firmware issue? (fwupdmgr shows that there is no
> > available updates) But based on my reading and understanding of
> > thinkpad_acpi.c, the particular ACPI call that I issued is also how
> > the Linux driver currently operates the PrivacyGuard feature, which
> > means the driver might also be affected by this issue. So I'm hoping
> > someone could help me debug this further, or point out anything that
> > I'm not understanding correctly.
> >
> > Thanks!
> > _______________________________________________
> >
> > ibm-acpi-devel mailing list
> >
> > ibm-acpi-devel@lists.sourceforge.net
> >
> > https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
>
>

--000000000000a2948a063a943543
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>I totally understand=
 that you might have other priorities, but just reminding you about this is=
sue again in case you forget!</div><div><br></div><div>Thank you,<br></div>=
<div>Pellaeon</div></div><br><div class=3D"gmail_quote gmail_quote_containe=
r"><div dir=3D"ltr" class=3D"gmail_attr">Nitin Joshi1 &lt;<a href=3D"mailto=
:njoshi1@lenovo.com">njoshi1@lenovo.com</a>&gt; =E6=96=BC 2025=E5=B9=B46=E6=
=9C=8820=E6=97=A5 =E9=80=B1=E4=BA=94 =E4=B8=8B=E5=8D=884:20=E5=AF=AB=E9=81=
=93=EF=BC=9A<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v class=3D"msg-7425189281466529162">





<div lang=3D"EN-US" style=3D"overflow-wrap: break-word;">
<div class=3D"m_-7425189281466529162WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Thanks Pellaeon !
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Even I can reproduce =
it (using Ubuntu 24.04) but I can see it gets toggled correctly using below=
 sysfs:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">cat /sys/class/drm/pr=
ivacy_screen-thinkpad_acpi/hw_state<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Marco =E2=80=93 Do yo=
u have any comment to debug this?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Thank you very much !=
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Thanks &amp; Regards,=
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Nitin
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<div style=3D"border-width:medium medium medium 1.5pt;border-style:none non=
e none solid;border-color:currentcolor currentcolor currentcolor blue;paddi=
ng:0in 0in 0in 4pt">
<div>
<div style=3D"border-width:1pt medium medium;border-style:solid none none;b=
order-color:rgb(225,225,225) currentcolor currentcolor;padding:3pt 0in 0in"=
>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:&quot;C=
alibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11pt;font=
-family:&quot;Calibri&quot;,sans-serif"> Pellaeon Lin &lt;<a href=3D"mailto=
:nfsmwlin@gmail.com" target=3D"_blank">nfsmwlin@gmail.com</a>&gt;
<br>
<b>Sent:</b> Thursday, June 19, 2025 10:56 PM<br>
<b>To:</b> Nitin Joshi1 &lt;<a href=3D"mailto:njoshi1@lenovo.com" target=3D=
"_blank">njoshi1@lenovo.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:ibm-acpi-devel@lists.sourceforge.net" target=
=3D"_blank">ibm-acpi-devel@lists.sourceforge.net</a><br>
<b>Subject:</b> Re: [External] Re: [ibm-acpi-devel] PrivacyGuard doesn&#39;=
t work even by sending ACPI commands directly<u></u><u></u></span></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">Hi all,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">I&#39;d like to bring up this issue again. I just up=
graded to Ubuntu 25.04, kernel 6.14.0-15-generic and I&#39;m still having t=
he same issue (the same ACPI call still have no effect).<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Thanks,<u></u><u></u></p>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">Nitin Joshi1 &lt;<a href=3D"mailto:njoshi1@lenovo.co=
m" target=3D"_blank">njoshi1@lenovo.com</a>&gt;
<span lang=3D"ZH-CN" style=3D"font-family:=E6=B8=B8=E3=82=B4=E3=82=B7=E3=83=
=83=E3=82=AF">=E6=96=BC</span> 2024<span lang=3D"ZH-CN" style=3D"font-famil=
y:=E6=B8=B8=E3=82=B4=E3=82=B7=E3=83=83=E3=82=AF">=E5=B9=B4</span>9<span lan=
g=3D"ZH-CN" style=3D"font-family:=E6=B8=B8=E3=82=B4=E3=82=B7=E3=83=83=E3=82=
=AF">=E6=9C=88</span>2<span lang=3D"ZH-CN" style=3D"font-family:=E6=B8=B8=
=E3=82=B4=E3=82=B7=E3=83=83=E3=82=AF">=E6=97=A5</span><span lang=3D"ZH-CN">
</span><span lang=3D"ZH-CN" style=3D"font-family:=E6=B8=B8=E3=82=B4=E3=82=
=B7=E3=83=83=E3=82=AF">=E9=80=B1=E4=B8=80</span><span lang=3D"ZH-CN"> </spa=
n>
<span lang=3D"ZH-CN" style=3D"font-family:=E6=B8=B8=E3=82=B4=E3=82=B7=E3=83=
=83=E3=82=AF">=E4=B8=8B=E5=8D=88</span>9:42<span lang=3D"ZH-CN" style=3D"fo=
nt-family:=E6=B8=B8=E3=82=B4=E3=82=B7=E3=83=83=E3=82=AF">=E5=AF=AB=E9=81=93=
=EF=BC=9A</span><u></u><u></u></p>
</div>
<blockquote style=3D"border-width:medium medium medium 1pt;border-style:non=
e none none solid;border-color:currentcolor currentcolor currentcolor rgb(2=
04,204,204);padding:0in 0in 0in 6pt;margin-left:4.8pt;margin-right:0in">
<div>
<div>
<div>
<p class=3D"MsoNormal">Hello Pellaeon,<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">&gt;&gt; @Mark: has the team replied anything?<u></u=
><u></u></p>
<p class=3D"MsoNormal">Mark has informed me regarding this and I am yet to =
check this . Sorry for this !<u></u><u></u></p>
<p class=3D"MsoNormal">I will try to get hold of system and try this within=
 this week , if I find AMD e-privacy guard machine .<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">Thanks
<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<div style=3D"border-width:medium medium medium 1.5pt;border-style:none non=
e none solid;padding:0in 0in 0in 4pt;border-color:currentcolor currentcolor=
 currentcolor blue">
<div>
<div style=3D"border-width:1pt medium medium;border-style:solid none none;p=
adding:3pt 0in 0in;border-color:currentcolor">
<p class=3D"MsoNormal"><b>From:</b> Pellaeon Lin &lt;<a href=3D"mailto:nfsm=
wlin@gmail.com" target=3D"_blank">nfsmwlin@gmail.com</a>&gt;
<br>
<b>Sent:</b> Sunday, September 1, 2024 2:32 PM<br>
<b>To:</b> <a href=3D"mailto:ibm-acpi-devel@lists.sourceforge.net" target=
=3D"_blank">
ibm-acpi-devel@lists.sourceforge.net</a><br>
<b>Subject:</b> [External] Re: [ibm-acpi-devel] PrivacyGuard doesn&#39;t wo=
rk even by sending ACPI commands directly<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<div>
<div>
<p class=3D"MsoNormal">Hi,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">@Mark: has the team replied anything?<u></u><u></u><=
/p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">@Marco: `proptest` on my system did not return any p=
roperty related to privacy screen, is this normal? (I ran `proptest | grep =
-i privacy`, which returned empty result.)<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Thanks,<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<div>
<div>
<p class=3D"MsoNormal">Marco Trevisan (Trevi=C3=B1o) &lt;<a href=3D"mailto:=
mail@3v1n0.net" target=3D"_blank">mail@3v1n0.net</a>&gt;
<span lang=3D"ZH-CN" style=3D"font-family:=E6=B8=B8=E3=82=B4=E3=82=B7=E3=83=
=83=E3=82=AF">=E6=96=BC</span> 2024<span lang=3D"ZH-CN" style=3D"font-famil=
y:=E6=B8=B8=E3=82=B4=E3=82=B7=E3=83=83=E3=82=AF">=E5=B9=B4</span>6<span lan=
g=3D"ZH-CN" style=3D"font-family:=E6=B8=B8=E3=82=B4=E3=82=B7=E3=83=83=E3=82=
=AF">=E6=9C=88</span>4<span lang=3D"ZH-CN" style=3D"font-family:=E6=B8=B8=
=E3=82=B4=E3=82=B7=E3=83=83=E3=82=AF">=E6=97=A5</span><span lang=3D"ZH-CN">
</span><span lang=3D"ZH-CN" style=3D"font-family:=E6=B8=B8=E3=82=B4=E3=82=
=B7=E3=83=83=E3=82=AF">=E9=80=B1=E4=BA=8C</span><span lang=3D"ZH-CN"> </spa=
n>
<span lang=3D"ZH-CN" style=3D"font-family:=E6=B8=B8=E3=82=B4=E3=82=B7=E3=83=
=83=E3=82=AF">=E4=B8=8A=E5=8D=88</span>2:07<span lang=3D"ZH-CN" style=3D"fo=
nt-family:=E6=B8=B8=E3=82=B4=E3=82=B7=E3=83=83=E3=82=AF">=E5=AF=AB=E9=81=93=
=EF=BC=9A</span><u></u><u></u></p>
</div>
<blockquote style=3D"border-width:medium medium medium 1pt;border-style:non=
e none none solid;padding:0in 0in 0in 6pt;margin:5pt 0in 5pt 4.8pt;border-c=
olor:currentcolor currentcolor currentcolor rgb(204,204,204)">
<p class=3D"MsoNormal">Hi,<br>
<br>
Not sure if something changed or it is different in newer models, but<br>
the privacy screen feature so far has been exposed as a KMS property you<br=
>
can inspect and set with tools like proptest (in libdrm-tests package<br>
for what concerns ubuntu)<br>
<br>
Cheers<br>
<br>
On giu 3 2024, at 1:46 pm, Pellaeon Lin &lt;<a href=3D"mailto:nfsmwlin@gmai=
l.com" target=3D"_blank">nfsmwlin@gmail.com</a>&gt; wrote:<br>
<br>
&gt; Hi,<br>
&gt; <br>
&gt; I have a ThinkPad X13 Gen 2 AMD with PrivacyGuard. But by pressing the=
<br>
&gt; combination key Fn+D it does not toggle the PrivacyGuard, the<br>
&gt; PrivacyGuard stays on. I&#39;ve tested:<br>
&gt; <br>
&gt; - Fn+D does toggle PrivacyGuard when I&#39;m in the BIOS<br>
&gt; - Fn+D has no effect on Ubuntu 22.10, Ubuntu 23.04, Ubuntu 23.10,<br>
&gt; Ubuntu 24.04 and Fedora 40 (except Ubuntu 23.10 and 24.04, all was<br>
&gt; tested using LiveUSB)<br>
&gt; <br>
&gt; In all of the Linux cases, I can confirm that by pressing Fn+D, the<br=
>
&gt; status value of /proc/acpi/ibm/lcdshadow actually changes.<br>
&gt; <br>
&gt; I&#39;ve always thought this was a Ubuntu-specific issue, until I test=
ed Fedora.<br>
&gt; <br>
&gt; I tested this further by installing the acpi-call-dkms package on<br>
&gt; Ubuntu and issues the following call:<br>
&gt; <br>
&gt; echo &#39;\_SB.PCI0.LPC0.EC0.HKEY.SSSS 0x1&#39; | sudo tee /proc/acpi/=
call<br>
&gt; <br>
&gt; It returned 0 (which should mean success), but PrivacyGuard is still<b=
r>
&gt; ON. Then I tried to call it with 0x0:<br>
&gt; <br>
&gt; echo &#39;\_SB.PCI0.LPC0.EC0.HKEY.SSSS 0x0&#39; | sudo tee /proc/acpi/=
call<br>
&gt; <br>
&gt; Also getting 0 in return. PrivacyGuard is still ON.<br>
&gt; <br>
&gt; Based on my limited understanding of ACPI and the kernel, at this<br>
&gt; point it might be a firmware issue? (fwupdmgr shows that there is no<b=
r>
&gt; available updates) But based on my reading and understanding of<br>
&gt; thinkpad_acpi.c, the particular ACPI call that I issued is also how<br=
>
&gt; the Linux driver currently operates the PrivacyGuard feature, which<br=
>
&gt; means the driver might also be affected by this issue. So I&#39;m hopi=
ng<br>
&gt; someone could help me debug this further, or point out anything that<b=
r>
&gt; I&#39;m not understanding correctly.<br>
&gt; <br>
&gt; Thanks!<br>
&gt; _______________________________________________<br>
&gt; <br>
&gt; ibm-acpi-devel mailing list<br>
&gt; <br>
&gt; <a href=3D"mailto:ibm-acpi-devel@lists.sourceforge.net" target=3D"_bla=
nk">ibm-acpi-devel@lists.sourceforge.net</a><br>
&gt; <br>
&gt; <a href=3D"https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel=
" target=3D"_blank">
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel</a><u></u><u></=
u></p>
</blockquote>
</div>
</div>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</div>

</div></blockquote></div>

--000000000000a2948a063a943543--


--===============7628666556972254040==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7628666556972254040==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

--===============7628666556972254040==--

