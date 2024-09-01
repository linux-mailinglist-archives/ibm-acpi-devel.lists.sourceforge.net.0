Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DFFE5967521
	for <lists+ibm-acpi-devel@lfdr.de>; Sun,  1 Sep 2024 07:33:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1skdCR-00070p-K1;
	Sun, 01 Sep 2024 05:32:31 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <nfsmwlin@gmail.com>) id 1skdCQ-00070j-FF
 for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 01 Sep 2024 05:32:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=e4qeJdYREEIkbHZrBa99fIimSAR3thZkc7TQHF9Hz34=; b=LjajX0AD3zhFUtiG2b1RsT9dWR
 IH8A9JkMN4d1VF0gA/X8cKZ7VIlLnJWvvieHgVyVfJVb6WQ6fA7Yf94+p8o2NZ77UxlYJ9VmKj7xx
 hvqtEPq0BOd3kBkzJP9PYTKkuQLkIl22CcjKBipO8/6kIB26y8N96bD4PV/AVTdwdRII=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=e4qeJdYREEIkbHZrBa99fIimSAR3thZkc7TQHF9Hz34=; b=UT9OGrlcrpyOT0TSssUwlSBU+1
 0cmjRlmYGBZZsjZlvwDQ1OaP2smhiUiONbv94aaQEGfaRntw8I7DQlxic2DoZUQ1KC9cNM3xm0Yw3
 huTZP2uX6d7sVHUnTFf70oea3sXWVYospQ40geXi+gcJ1CZZ2jBcHprni27Acd+WYwp8=;
Received: from mail-yw1-f176.google.com ([209.85.128.176])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1skdCO-0002L8-TQ for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 01 Sep 2024 05:32:29 +0000
Received: by mail-yw1-f176.google.com with SMTP id
 00721157ae682-6d6a3ab427aso1440247b3.2
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Sat, 31 Aug 2024 22:32:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1725168743; x=1725773543; darn=lists.sourceforge.net;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date:message-id:reply-to;
 bh=e4qeJdYREEIkbHZrBa99fIimSAR3thZkc7TQHF9Hz34=;
 b=XJF8pUcuQVddQsdUjUprC/XFPiTzXuw1xPQJ2Mztj5FzCOkEghH+qCAMPy8hyPcsfZ
 daWtvTMsbwaob5e4SHfAbXphyIUOuIu1rTTypj0LqWyJmw4jVOFOWWytDuVtTjfesn0M
 FpLcLDAuRTMl39DyLLhJIvyNsKg9Bqm6WncvSyf30y1oU5TT3tqPpgA+yKQe/uSqmipQ
 eMZhSP/eM4SJHCegVUq82LIMe6six2FGF6Jsc6jC6O23LuJKzbNspYR1estAUk6T50px
 qD1linW0g7PbMdhaIUG2PWK9Q7vATbByNwKug8hdevfHFydOFfCnIH9fnA+Xta8UeJPX
 hX+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725168743; x=1725773543;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=e4qeJdYREEIkbHZrBa99fIimSAR3thZkc7TQHF9Hz34=;
 b=fcNmIws1+S79W1u3xV/eOuecz6E4NlyY8pbQZ1aTFFYcJvFRSm9UBJeaTIJiVemZfT
 PmqfHwOKP3fplB0u5BXq6KyhI5RqRBVrkPlOPBOMLMzGo1S/WErXyCqj6+LTEBxZ2ATW
 EhwGt4xMyX8cFRXbVfwf/JSnWU2A/SgpGr5qDbIIw+LCFVrG8gYlGMDVzbVfYXzrIs8k
 mPCcezmcGiL5vLV1JBAByBhtyGvpNWU9wRS0CbVWEcEHBtPFYNsiDQf+EbOpZm+mj1MJ
 X8m0stvzIp1qkTyaDJVxzSBU3b8RW5AYy1rTc1yJQcsKDizJPGR5eYW31jmIFqoCZ4nu
 adoA==
X-Gm-Message-State: AOJu0YxGbOj5ScabVaNed6ffISd8TEAE6lxcyiOj8VStWOnPXFE8Zs1J
 lxXdaq2cJOH866b9dSAsEIgVB0yG2v7NunzXLWFAPJF3pg882WNfOYLUs0AOaS9eFghDoGGtPqY
 ar8bEWchYhD4LhfZWsnuj++9mBcalww==
X-Google-Smtp-Source: AGHT+IFm3ylJ6TfYtaWeQ2ALOJHmzvTF6QnLjecYNfQ87KrwF6hKKscaPCG7EqY01e2MNiPj9AGORnxG18Ixc0mMTZY=
X-Received: by 2002:a05:690c:398:b0:650:858c:9b9c with SMTP id
 00721157ae682-6d40f81e192mr71079617b3.29.1725168743022; Sat, 31 Aug 2024
 22:32:23 -0700 (PDT)
MIME-Version: 1.0
References: <CADjcfxZy3LPTmapAvqO7uNZx1Dow5JscyG3L-J3_YB1zaCf1WQ@mail.gmail.com>
 <8ADA47CC-8883-4977-AC6E-C4BCD7365EB0@getmailspring.com>
In-Reply-To: <8ADA47CC-8883-4977-AC6E-C4BCD7365EB0@getmailspring.com>
From: Pellaeon Lin <nfsmwlin@gmail.com>
Date: Sun, 1 Sep 2024 13:32:11 +0800
Message-ID: <CADjcfxYCUfKmQuZwhhPZvt+TjbWc1ChKdq55QnCF5VRx3stBnQ@mail.gmail.com>
To: "ibm-acpi-devel@lists.sourceforge.net"
 <ibm-acpi-devel@lists.sourceforge.net>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, @Mark: has the team replied anything? @Marco: `proptest`
 on my system did not return any property related to privacy screen, is this
 normal? (I ran `proptest | grep -i privacy`, which returned empty result.)
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [nfsmwlin[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.176 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.176 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1skdCO-0002L8-TQ
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
Content-Type: multipart/mixed; boundary="===============4817203758054605609=="
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

--===============4817203758054605609==
Content-Type: multipart/alternative; boundary="0000000000001b129d0621082634"

--0000000000001b129d0621082634
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

@Mark: has the team replied anything?

@Marco: `proptest` on my system did not return any property related to
privacy screen, is this normal? (I ran `proptest | grep -i privacy`, which
returned empty result.)

Thanks,

Marco Trevisan (Trevi=C3=B1o) <mail@3v1n0.net> =E6=96=BC 2024=E5=B9=B46=E6=
=9C=884=E6=97=A5 =E9=80=B1=E4=BA=8C =E4=B8=8A=E5=8D=882:07=E5=AF=AB=E9=81=
=93=EF=BC=9A

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

--0000000000001b129d0621082634
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>@Mark: has the team repl=
ied anything?</div><div><br></div><div>@Marco: `proptest` on my system did =
not return any property related to privacy screen, is this normal? (I ran `=
proptest | grep -i privacy`, which returned empty result.)</div><div><br></=
div><div>Thanks,<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">Marco Trevisan (Trevi=C3=B1o) &lt;<a href=3D"mail=
to:mail@3v1n0.net">mail@3v1n0.net</a>&gt; =E6=96=BC 2024=E5=B9=B46=E6=9C=88=
4=E6=97=A5 =E9=80=B1=E4=BA=8C =E4=B8=8A=E5=8D=882:07=E5=AF=AB=E9=81=93=EF=
=BC=9A<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
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
" rel=3D"noreferrer" target=3D"_blank">https://lists.sourceforge.net/lists/=
listinfo/ibm-acpi-devel</a><br>
</blockquote></div>

--0000000000001b129d0621082634--


--===============4817203758054605609==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============4817203758054605609==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

--===============4817203758054605609==--

