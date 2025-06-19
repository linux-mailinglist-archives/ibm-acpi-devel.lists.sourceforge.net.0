Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 72AB6AE07F9
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 19 Jun 2025 15:56:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Cc:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:
	From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Khb/JtjFmhabWwMdcIEFznaRg91BtLo6joYjyGq34xQ=; b=RsDaPz+y6hPXDma9OurY8CGWuq
	5t9N3/aITqb9YLtNZA2qLCO+1FC+H/9A7IixG3gZg5Ag5QetW0TOwTEY9aEPd5jObpsxhCqBmndRc
	repplIDXqrByJQ0XEkMs+43GzHvVp0KLJrhFW62BgyRkWEC5bcJdx1aYah6rBgyx2V/I=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uSFkK-0001qf-D1;
	Thu, 19 Jun 2025 13:56:04 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <nfsmwlin@gmail.com>) id 1uSFkJ-0001qT-9y
 for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 19 Jun 2025 13:56:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XVcMyYFZwom17IXSpDbiUF59ub/3IX2z0UVfo5l9a88=; b=cBNLhpuClzNkulC1pfmLiJRYIm
 hN4k8xRFz/YPhYE30RMeFO/JRQ4xNxp4e01P3nMk7lwPnbask6tIHacTBiQIfVAwwfAjRP+FXe/aY
 7iGv5/j02e7bC/yQhURJRQ2PvtD5+4qFw8OJUDVZhFUNPh/HPnRzP65Us2f/XyIUv9Tg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XVcMyYFZwom17IXSpDbiUF59ub/3IX2z0UVfo5l9a88=; b=Q8eHM/JiXRKumvDuUhX1hNKW1d
 kfZZM/2oB1yHASUJCIKDmCARIVfRhjuHmwgryEjmaSiXsEzbF6gFPtrwp5lpfTjAgDI8cnDpegPx+
 vqxrbmqSF9XwT8mNwZ2oxH8bMav+bAU/DNBAVpf7XkrOqNTOjA9I5mNKvXa2ZAW6IDWk=;
Received: from mail-yb1-f176.google.com ([209.85.219.176])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uSFkI-0007xN-MV for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 19 Jun 2025 13:56:03 +0000
Received: by mail-yb1-f176.google.com with SMTP id
 3f1490d57ef6-e75668006b9so854592276.3
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Thu, 19 Jun 2025 06:56:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1750341352; x=1750946152; darn=lists.sourceforge.net;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=XVcMyYFZwom17IXSpDbiUF59ub/3IX2z0UVfo5l9a88=;
 b=edEMZ+KFb0yqkw4b5gls6db1qPlrJejG+8BqqUKpjx/3EznjCK5Vf2ukNJtriTgPTa
 0ulIFBBazQpbJdgt7k30dzBFVaNGm4zYQO/QtGAuFeeq1EEWd/T2yt1mbbfxepmEZe4B
 EUF4K5nEs/PlW50sF09O2EAuvzzto+K7AjC3gsA3v0h2ZzHa+jhJ4OeJABtfUFFlKTgI
 +T88kyXqBcPhKwD1D250Lvw0utSoefckDV9jpMMyy5g4KUe4d/rHKdL6q1PzvHcwfE+P
 GTawISMWc4PDX2U4TvkwU+nHvWONXQh4wNlB7OAb+0MBKDkEsgHHI0GcqUc5j/3cjgS3
 xXOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750341352; x=1750946152;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=XVcMyYFZwom17IXSpDbiUF59ub/3IX2z0UVfo5l9a88=;
 b=Oorio60js5fN7WeTDnEl4qv/Q/Q2eTJmnnTUCGid8PjoL+cB9+OPTbc2rmGDvoD3Ql
 hPe++nf9tZmT6E+SoZoFKUOaXNPP8IYdQZ5I7HkgA6Os/G6tsiJUi3P5SKbLaHPmLZeF
 rHkjT7kCh2L2B2vEG94ltbXho8z4cp2hoo3jJYF9Rq+RFvmGPaXlxLZjoQw2UCoUt2QB
 zkS0neO2em1kzTYlfMISH3+k0NhuLDtNCL/5ma7NFIJBc8xZICtGiKn2eoFDIZrlmGOL
 Vio3zW1PYhImNadndYR1UOpMYTNp6LQQldu9I4HvNhqnWqi8eqI93SDx8xE5i92tGwOo
 xD7A==
X-Gm-Message-State: AOJu0YzTKpvX1xhPSht7cYW8p+l8CfpK0Cb5fbcERSd0eEi5/ND7CL6s
 k1x9WUbTSExUWQHkvCKNz/hOFSScsaL8rOLStp8EpgASqj0B7B+fv+Php8n8yyPCMujDRWn7tQx
 tU+ekUOZpHCBb+E8uQfskMEDxj+CUiMg0KOuj
X-Gm-Gg: ASbGncuQfT42pX3RAdoJrLot2R+jfNYXP8SAOjfWp42mUk5zWm4rjFb2V4I+xamZLTx
 H4BH4pykRUbivt/OMQGEjjI8vobtWPdJb7LSJW+R4WUQsSRuW6APnFeT1uRxkb+EPXwp7sQQTki
 MIxwV8lOKdTFNYle5lXu7WWGs6dRZbbGkDhGk1FK7aN/ujG7b7N/oQNGMGasF7Ppa5m0boLWdzB
 MjAPg==
X-Google-Smtp-Source: AGHT+IGSwpD4xsvbvNfR7+iw4PS2LO5Vksf+Ni7eLY8GX2XrKuJtq9Qg0InPtGmEEXglUlCaikrxzcAUD1VuXG72oO4=
X-Received: by 2002:a05:6902:2581:b0:e82:1a20:2358 with SMTP id
 3f1490d57ef6-e822aea48edmr31438883276.47.1750341350976; Thu, 19 Jun 2025
 06:55:50 -0700 (PDT)
MIME-Version: 1.0
References: <CADjcfxZy3LPTmapAvqO7uNZx1Dow5JscyG3L-J3_YB1zaCf1WQ@mail.gmail.com>
 <8ADA47CC-8883-4977-AC6E-C4BCD7365EB0@getmailspring.com>
 <CADjcfxYCUfKmQuZwhhPZvt+TjbWc1ChKdq55QnCF5VRx3stBnQ@mail.gmail.com>
 <SEZPR03MB795996A1F0F4CA3A7DA69A638C922@SEZPR03MB7959.apcprd03.prod.outlook.com>
In-Reply-To: <SEZPR03MB795996A1F0F4CA3A7DA69A638C922@SEZPR03MB7959.apcprd03.prod.outlook.com>
From: Pellaeon Lin <nfsmwlin@gmail.com>
Date: Thu, 19 Jun 2025 21:55:40 +0800
X-Gm-Features: Ac12FXwdQ04eQQHjNGzyy55003bOq9LQfrLt3RGcpHHxlfhCrHmx0l3QWURNTDg
Message-ID: <CADjcfxYo-Lry3T+3ywxqjD4PzqqMwFauJtK9qbOgVqLmkh5pvg@mail.gmail.com>
To: Nitin Joshi1 <njoshi1@lenovo.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi all,
 I'd like to bring up this issue again. I just upgraded
 to Ubuntu 25.04, kernel 6.14.0-15-generic and I'm still having the same issue
 (the same ACPI call still have no effect). Thanks, 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [nfsmwlin(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.176 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1uSFkI-0007xN-MV
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
 <ibm-acpi-devel@lists.sourceforge.net>
Content-Type: multipart/mixed; boundary="===============5478767010450674825=="
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

--===============5478767010450674825==
Content-Type: multipart/alternative; boundary="00000000000075f1e90637ed1ae2"

--00000000000075f1e90637ed1ae2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

I'd like to bring up this issue again. I just upgraded to Ubuntu 25.04,
kernel 6.14.0-15-generic and I'm still having the same issue (the same ACPI
call still have no effect).

Thanks,


Nitin Joshi1 <njoshi1@lenovo.com> =E6=96=BC 2024=E5=B9=B49=E6=9C=882=E6=97=
=A5 =E9=80=B1=E4=B8=80 =E4=B8=8B=E5=8D=889:42=E5=AF=AB=E9=81=93=EF=BC=9A

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

--00000000000075f1e90637ed1ae2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>I&#39;d like to brin=
g up this issue again. I just upgraded to Ubuntu 25.04, kernel 6.14.0-15-ge=
neric and I&#39;m still having the same issue (the same ACPI call still hav=
e no effect).</div><div><br></div><div>Thanks,</div><br></div><br><div clas=
s=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_att=
r">Nitin Joshi1 &lt;<a href=3D"mailto:njoshi1@lenovo.com">njoshi1@lenovo.co=
m</a>&gt; =E6=96=BC 2024=E5=B9=B49=E6=9C=882=E6=97=A5 =E9=80=B1=E4=B8=80 =
=E4=B8=8B=E5=8D=889:42=E5=AF=AB=E9=81=93=EF=BC=9A<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div class=3D"msg2759253170961259886">





<div lang=3D"EN-US" style=3D"overflow-wrap: break-word;">
<div class=3D"m_2759253170961259886WordSection1">
<p class=3D"MsoNormal"><span>Hello Pellaeon,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span>&gt;&gt; </span>@Mark: has the team replied an=
ything?<u></u><u></u></p>
<p class=3D"MsoNormal"><span>Mark has informed me regarding this and I am y=
et to check this . Sorry for this !<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span>I will try to get hold of system and try this =
within this week , if I find AMD e-privacy guard machine .<u></u><u></u></s=
pan></p>
<p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span>Thanks <u></u><u></u></span></p>
<p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p>
<div style=3D"border-width:medium medium medium 1.5pt;border-style:none non=
e none solid;border-color:currentcolor currentcolor currentcolor blue;paddi=
ng:0in 0in 0in 4pt">
<div>
<div style=3D"border-width:1pt medium medium;border-style:solid none none;b=
order-color:rgb(225,225,225) currentcolor currentcolor;padding:3pt 0in 0in"=
>
<p class=3D"MsoNormal"><b>From:</b> Pellaeon Lin &lt;<a href=3D"mailto:nfsm=
wlin@gmail.com" target=3D"_blank">nfsmwlin@gmail.com</a>&gt; <br>
<b>Sent:</b> Sunday, September 1, 2024 2:32 PM<br>
<b>To:</b> <a href=3D"mailto:ibm-acpi-devel@lists.sourceforge.net" target=
=3D"_blank">ibm-acpi-devel@lists.sourceforge.net</a><br>
<b>Subject:</b> [External] Re: [ibm-acpi-devel] PrivacyGuard doesn&#39;t wo=
rk even by sending ACPI commands directly<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">Hi,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">@Mark: has the team replied anything?<u></u><u></u><=
/p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">@Marco: `proptest` on my system did not return any p=
roperty related to privacy screen, is this normal? (I ran `proptest | grep =
-i privacy`, which returned empty result.)<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Thanks,<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
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
e none none solid;border-color:currentcolor currentcolor currentcolor rgb(2=
04,204,204);padding:0in 0in 0in 6pt;margin-left:4.8pt;margin-right:0in">
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

</div></blockquote></div>

--00000000000075f1e90637ed1ae2--


--===============5478767010450674825==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============5478767010450674825==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

--===============5478767010450674825==--

