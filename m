Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CE0D462033F
	for <lists+ibm-acpi-devel@lfdr.de>; Tue,  8 Nov 2022 00:05:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1osBAV-0000Hd-JY;
	Mon, 07 Nov 2022 23:04:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <bryanhundven@gmail.com>) id 1osBAU-0000HT-Lb
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 07 Nov 2022 23:04:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5BAlM0WgbOcIqtBhtOApESWCjHesB9BmgD/t9gwsTQw=; b=h0nvOOGB3k7Jtp0fRrPbAShqf1
 119aLPZvuFFTjbT26hetHRZA8XkuaM3ra/WBCs+TlvG8sU573cMEGJeDjESD42IXvYC2wdXjmsegO
 1mzWeBDE67cMwZm36djnIv5H36ZJg7OAF5FfWf7nEmYfUryIiWqpTTn+v91erboWBKzE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5BAlM0WgbOcIqtBhtOApESWCjHesB9BmgD/t9gwsTQw=; b=e1wDe/fE97QSPQpm3oHnBueVj7
 wuwKDFs9G63hEsBkZRKpjnE2kBsDlHb3yF9uIZYNMB22VgCWW4UAno12NUjiehk36+4cZHl0XmOZY
 cDEjQO2vTXLPZUZb7mHL1WhJqSPoGdPGzhItVHbowyGn5bh6jvxePNPXzuekoLzW6JNc=;
Received: from mail-ej1-f53.google.com ([209.85.218.53])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1osBAQ-0007lv-6K for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 07 Nov 2022 23:04:38 +0000
Received: by mail-ej1-f53.google.com with SMTP id b2so34148060eja.6
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 07 Nov 2022 15:04:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=5BAlM0WgbOcIqtBhtOApESWCjHesB9BmgD/t9gwsTQw=;
 b=MC4iGBC7/iallwaScUeQRvuV6qyQf6UzFTeuBDuhwegjwYLNjqA2n/dvO0+jjWEIEh
 TPZBMn/y8+nl9qeuMqOZnv5z1JfHcm7wnZkgN5lpEV+5EHsTESRdQjAAXgISv7xs674L
 Hi0KClRfP8n9RyEHsZEVEILlP892MOSfkNekPohN+PN1699s2knwOfkzta+0oq7gEyuC
 GOdAsgpUzfFJPobMfYbEx6FrwdVm4zKyJKLQnMhA9kI/Xdu0GVPXJZQrw3pITii4GjbY
 yRr1LOisLkmgDuT0H7H+B8VIR7fL2RBQ3DK43uNHRJjU5UcSgHMhXwQ2U+o1kAxMhv7D
 2MHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=5BAlM0WgbOcIqtBhtOApESWCjHesB9BmgD/t9gwsTQw=;
 b=qxtYit/QoBRM7U19vZilIa8CBOLNH5WcSGXhlfQtMSiSqusRCz0VtvNoFzYMqTjf28
 xfYOlG+o2k1HAgdkAif0QwWjt+sltC5VFJGCq4qh62FYeK1gULRndk/Y2I/sZJi0Jtt9
 WK7RphUBSZqpFf3I2/U42JwVfTswbwqkcljHwK/V6RxQmVW4Lj08+1vbG6hUa+q1K4qD
 C5bpe9RRK0b6RNG81iKOKHYbizn87L8oh1YUK1jYzBepQUfO2mtiECICBSjhREPaug2x
 52jYlrt/A/uLt9HQKMzvk9NbU7Bw5elY+wNbdK7kzd33P5IRnRcOmfvq+DIYy6FWVE1+
 KxJQ==
X-Gm-Message-State: ACrzQf1DNIGDkGLVVdP1/K/3FIKpgqUOuNHp+Qd3YQ5ak/SXZ+cQwfHU
 4zz81hNqTBw0oCcLHRrbO+Dg6YQpi+bXQ8qjDDBN8pVO050=
X-Google-Smtp-Source: AMsMyM7iP3tJJeCk2UWPd/l+3AnnwYXtb7tIiKCDRlUpU6oL/GUI2nW7Q3qZmScqGRRS0A8Joh+kPJVJEOTAChwVle0=
X-Received: by 2002:a17:907:7e85:b0:7ad:bf64:b5de with SMTP id
 qb5-20020a1709077e8500b007adbf64b5demr48937897ejc.20.1667862267554; Mon, 07
 Nov 2022 15:04:27 -0800 (PST)
MIME-Version: 1.0
References: <20221107191620.33621-1-bryanhundven@gmail.com>
 <TYZPR03MB599462927BF2D385ED627BBCBD3C9@TYZPR03MB5994.apcprd03.prod.outlook.com>
 <e5d23406-edb6-47bd-8e5a-227cb2181ca1@app.fastmail.com>
In-Reply-To: <e5d23406-edb6-47bd-8e5a-227cb2181ca1@app.fastmail.com>
From: Bryan Hundven <bryanhundven@gmail.com>
Date: Mon, 7 Nov 2022 15:04:15 -0800
Message-ID: <CAJ+oik08QE071LVQ6ck9kTRqWZ2LTfXAdHsoAc2vqTsm-Ve3iA@mail.gmail.com>
To: Mark Pearson <mpearson-lenovo@squebb.ca>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Mark, I rebooted back into the default Debian (sid) 6.0.6-2
 linux image and I do see the `thinkpad_acpi: secondary fan control detected
 & enabled` message. Is there a recommendation from lenovo for thinkfan [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bryanhundven[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.218.53 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.53 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1osBAQ-0007lv-6K
Subject: Re: [ibm-acpi-devel] Fw: [External] [PATCH] platform/x86:
 thinkpad_acpi: Add fan quirk to X1 Extreme 4th Gen
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
Cc: ibm-acpi-devel@lists.sourceforge.net
Content-Type: multipart/mixed; boundary="===============8797151901274684332=="
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

--===============8797151901274684332==
Content-Type: multipart/alternative; boundary="000000000000fdefa705ece97120"

--000000000000fdefa705ece97120
Content-Type: text/plain; charset="UTF-8"

Mark,

I rebooted back into the default Debian (sid) 6.0.6-2 linux image and I do
see the `thinkpad_acpi: secondary fan control detected & enabled` message.
Is there a recommendation from lenovo for thinkfan (
https://github.com/vmatare/thinkfan) config - or another fan control tool -
for X1 Extreme Gen 4i (20Y5007HUS)?
I have tried quite a few different configurations, and figured that maybe
the quirk needed to be specifically enabled. It either runs really hot or
sounds like a jet engine.

-Bryan

On Mon, Nov 7, 2022 at 2:09 PM Mark Pearson <mpearson-lenovo@squebb.ca>
wrote:

> Hi Bryan
>
> In theory that shouldn't be needed - I added some auto detection code to
> the driver a little while back:
>
> https://github.com/torvalds/linux/commit/bf779aaf56ea23864e39e9862b3b3a8436236e07
> And specifically removed the P1 G4 there as I'd tested it and the 2nd fan
> was auto-detected on my system.
>
> I take it that's not working on your system? Can we debug it and
> understand why? I really wanted to get away from having to add more and
> more quirks as more platforms were added.
>
> Mark
> Note - moved to a new email address as I was fedup with Outlook. I'm the
> same person as markpearson@lenovo.com :)
>
>
> ------------------------------
>
> *From:* Bryan Hundven <bryanhundven@gmail.com>
> *Sent:* November 7, 2022 14:16
> *Subject:* [External] [ibm-acpi-devel] [PATCH] platform/x86:
> thinkpad_acpi: Add fan quirk to X1 Extreme 4th Gen
>
> P1/X1 Extreme 4th Gen needs 2nd Controller fan quirk.
>
> Signed-off-by: Bryan Hundven <bryanhundven@gmail.com>
> ---
>  drivers/platform/x86/thinkpad_acpi.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/platform/x86/thinkpad_acpi.c
> b/drivers/platform/x86/thinkpad_acpi.c
> index 20e5c043a8e8..2c8a25950fc9 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -8825,6 +8825,7 @@ static const struct tpacpi_quirk fan_quirk_table[]
> __initconst = {
>          TPACPI_Q_LNV3('N', '2', 'N', TPACPI_FAN_2CTL),  /* P53 / P73 */
>          TPACPI_Q_LNV3('N', '2', 'E', TPACPI_FAN_2CTL),  /* P1 / X1
> Extreme (1st gen) */
>          TPACPI_Q_LNV3('N', '2', 'O', TPACPI_FAN_2CTL),  /* P1 / X1
> Extreme (2nd gen) */
> +       TPACPI_Q_LNV3('N', '4', '0', TPACPI_FAN_2CTL),  /* P1 / X1 Extreme
> (4th gen) */
>          TPACPI_Q_LNV3('N', '3', '0', TPACPI_FAN_2CTL),  /* P15 (1st gen)
> / P15v (1st gen) */
>          TPACPI_Q_LNV3('N', '3', '7', TPACPI_FAN_2CTL),  /* T15g (2nd gen)
> */
>          TPACPI_Q_LNV3('N', '1', 'O', TPACPI_FAN_NOFAN), /* X1 Tablet (2nd
> gen) */
> --
> 2.38.1
>
>
>
>

--000000000000fdefa705ece97120
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Mark,<div><br></div><div>I rebooted back into the default =
Debian (sid) 6.0.6-2 linux image and I do see the `thinkpad_acpi: secondary=
 fan control detected &amp; enabled` message.</div><div>Is there a recommen=
dation from lenovo for thinkfan (<a href=3D"https://github.com/vmatare/thin=
kfan">https://github.com/vmatare/thinkfan</a>) config - or another fan cont=
rol tool - for X1 Extreme Gen 4i (20Y5007HUS)?</div><div>I have tried quite=
 a few different configurations, and figured that maybe the quirk needed to=
 be specifically enabled. It either runs really hot or sounds like a jet en=
gine.</div><div><br></div><div>-Bryan</div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Nov 7, 2022 at 2:09 PM M=
ark Pearson &lt;<a href=3D"mailto:mpearson-lenovo@squebb.ca">mpearson-lenov=
o@squebb.ca</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div class=3D"msg-3168276424743762201"><u></u><div><div>Hi Bryan=
<br></div><div><br></div><div>In theory that shouldn&#39;t be needed - I ad=
ded some auto detection code to the driver a little while back:<br></div><d=
iv><a href=3D"https://github.com/torvalds/linux/commit/bf779aaf56ea23864e39=
e9862b3b3a8436236e07" target=3D"_blank">https://github.com/torvalds/linux/c=
ommit/bf779aaf56ea23864e39e9862b3b3a8436236e07</a><br></div><div>And specif=
ically removed the P1 G4 there as I&#39;d tested it and the 2nd fan was aut=
o-detected on my system.<br></div><div><br></div><div>I take it that&#39;s =
not working on your system? Can we debug it and understand why? I really wa=
nted to get away from having to add more and more quirks as more platforms =
were added.<br></div><div><br></div><div>Mark<br></div><div>Note - moved to=
 a new email address as I was fedup with Outlook. I&#39;m the same person a=
s <a href=3D"mailto:markpearson@lenovo.com" target=3D"_blank">markpearson@l=
enovo.com</a>=C2=A0:)<br></div><div><br></div><blockquote type=3D"cite" id=
=3D"m_-3168276424743762201qt"><div id=3D"m_-3168276424743762201qt-appendons=
end"><br></div><div><hr style=3D"display:inline-block;width:98%"><br></div>=
<div id=3D"m_-3168276424743762201qt-divRplyFwdMsg" dir=3D"ltr"><div><span s=
tyle=3D"font-family:Calibri,sans-serif"><span style=3D"color:rgb(0,0,0)"><b=
>From:</b> Bryan Hundven &lt;<a href=3D"mailto:bryanhundven@gmail.com" targ=
et=3D"_blank">bryanhundven@gmail.com</a>&gt;<br> <b>Sent:</b> November 7, 2=
022 14:16<br>  <b>Subject:</b> [External] [ibm-acpi-devel] [PATCH] platform=
/x86: thinkpad_acpi: Add fan quirk to X1 Extreme 4th Gen</span></span> </di=
v><div>=C2=A0<br></div></div><div><span style=3D"font-size:13px"><span><spa=
n style=3D"font-size:11pt"><div><div>P1/X1 Extreme 4th Gen needs 2nd Contro=
ller fan quirk.<br></div><div> <br></div><div> Signed-off-by: Bryan Hundven=
 &lt;<a href=3D"mailto:bryanhundven@gmail.com" target=3D"_blank">bryanhundv=
en@gmail.com</a>&gt;<br></div><div> ---<br></div><div> =C2=A0drivers/platfo=
rm/x86/thinkpad_acpi.c | 1 +<br></div><div> =C2=A01 file changed, 1 inserti=
on(+)<br></div><div> <br></div><div> diff --git a/drivers/platform/x86/thin=
kpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c<br></div><div> index 20e=
5c043a8e8..2c8a25950fc9 100644<br></div><div> --- a/drivers/platform/x86/th=
inkpad_acpi.c<br></div><div> +++ b/drivers/platform/x86/thinkpad_acpi.c<br>=
</div><div> @@ -8825,6 +8825,7 @@ static const struct tpacpi_quirk fan_quir=
k_table[] __initconst =3D {<br></div><div> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 TPACPI_Q_LNV3(&#39;N&#39;, &#39;2&#39;, &#39;N&#39;, TPA=
CPI_FAN_2CTL),=C2=A0 /* P53 / P73 */<br></div><div> =C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 TPACPI_Q_LNV3(&#39;N&#39;, &#39;2&#39;, &#39;E&=
#39;, TPACPI_FAN_2CTL),=C2=A0 /* P1 / X1 Extreme (1st gen) */<br></div><div=
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TPACPI_Q_LNV3(&#39;N&#39=
;, &#39;2&#39;, &#39;O&#39;, TPACPI_FAN_2CTL),=C2=A0 /* P1 / X1 Extreme (2n=
d gen) */<br></div><div> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TPACPI_Q_LNV=
3(&#39;N&#39;, &#39;4&#39;, &#39;0&#39;, TPACPI_FAN_2CTL),=C2=A0 /* P1 / X1=
 Extreme (4th gen) */<br></div><div> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 TPACPI_Q_LNV3(&#39;N&#39;, &#39;3&#39;, &#39;0&#39;, TPACPI_FA=
N_2CTL),=C2=A0 /* P15 (1st gen) / P15v (1st gen) */<br></div><div> =C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TPACPI_Q_LNV3(&#39;N&#39;, &#39;=
3&#39;, &#39;7&#39;, TPACPI_FAN_2CTL),=C2=A0 /* T15g (2nd gen) */<br></div>=
<div> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TPACPI_Q_LNV3(&#39;N=
&#39;, &#39;1&#39;, &#39;O&#39;, TPACPI_FAN_NOFAN), /* X1 Tablet (2nd gen) =
*/<br></div><div> -- <br></div><div> 2.38.1<br></div><div>=C2=A0<br></div><=
/div></span></span></span></div></blockquote><div><br></div></div></div></b=
lockquote></div>

--000000000000fdefa705ece97120--


--===============8797151901274684332==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============8797151901274684332==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

--===============8797151901274684332==--

