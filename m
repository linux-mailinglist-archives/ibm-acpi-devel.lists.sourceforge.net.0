Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D1C922E3C9
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 27 Jul 2020 03:57:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Reply-To:From:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	MIME-Version:Message-ID:To:Date:Sender:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	bh=1Y86qDm8iKrWV+Egu5A3ZKyp8r89zLhx2qp+yhPtI3E=; b=mpX3tix8GVvXi9jcMa13TW2QNR
	FVoortXJrKdEu32pfD/I4wkX3izKTRFxQR2NSVkpQCisxfkW7v1Mtk17hheBG7NsxT9PNHt3IEzn9
	AGGQxwKAUxpfHTOB4hiHFfmvJAFwEVKhPBoqt6mkBGc1s/rWMQznNPmnLornvOgiaYx4=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jzsNm-0002rw-5G; Mon, 27 Jul 2020 01:56:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <cicuto.riccardo@yahoo.com>) id 1jtbP8-0001Iw-VK
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 09 Jul 2020 18:36:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:Content-Type:MIME-Version:Subject:
 Message-ID:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wuGZlVo2eZa+LJ41sV4ipZLcNr0fZj1otYD2tnZtPbk=; b=LWMPg2c9YI5N6tRGgVORlrpqR0
 wywUdPeCXheuaFrKUA9kal6V9LkXdxORgXKd5JNfTIGNWGo1yF/W/QfG8id+e4e18U1TESmY9pu5V
 cQdIj+NWlhT9mTAo9Rv8Dqk/sj1Fdzme5PpVztIPCI5JRRq7owpoLiJnDm94uK2r4NSw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:Content-Type:MIME-Version:Subject:Message-ID:To:From:Date:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=wuGZlVo2eZa+LJ41sV4ipZLcNr0fZj1otYD2tnZtPbk=; b=P
 vucV+7exsRGDfiPlWQKZ5J27MIGLkYyQlhbdt37cRNEyXop6Pwu0xz7I/vVwVNT6tAlMbKD3hM4IB
 mb3aSuFJN+qhCcOcj5KPJxzPeCNwDCwLLr12ApgOqDVY13TkIPUoMZVV4qOEapbaxQsHaQZ52agL8
 G2whU8z68Dr1l66Y=;
Received: from sonic308-2.consmr.mail.bf2.yahoo.com ([74.6.130.41])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jtbP4-00CQf4-TS
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 09 Jul 2020 18:36:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1594319761; bh=wuGZlVo2eZa+LJ41sV4ipZLcNr0fZj1otYD2tnZtPbk=;
 h=Date:From:To:Subject:References:From:Subject;
 b=sspiiczt3eqer0wt848n7QD3rUcU+1qvU+8C75k+5Y3XIlIuWSOAYzOTHPwkluTNSqa4HjpieiYMI99MFnfPkkYr++9usNKGkbmlioBbeBKL4f7Z3wUColkjyx6Gj2yA3qOEU54CV2G3HObGGG/q3hQfzCOJj9PtiQYeVtVhgzwgODPIX/Y4T/P+PHl8jyU9aaqYEJ/GychjuGp3l9YzLBtqlgLD7KZbmEe2e2IK41Q2HLzGADLXoAOgh5YB1Xzm5S54/vVpcez0eZhZTd7hOrgpScR3JqBoHpF3EFWwCoPQ8kit5ieMNTCXhSQc6HCM/QqvlzPce3BoWJE0UtPFNw==
X-YMail-OSG: cqnjxYcVM1nHsYslT4VWxOwR7v26j7GEKZephQ6NsVznCvttfLqSZNkAzL42UYt
 eIltc9aY7sZh83AlF036iMVDnvQbt8kDtSV789XMHJH5DBfXH5unXVaED2HA2EFyU8Na1odJyKa1
 ZlkubEjDfycwjqwEh9b1HI0bXqq5WE4sxguO4hUIH54cQ95PCbVi0cgjgntqhDL5kz1_.pug34er
 q5Vc7vUHC_zCHDoRqSMWoYjujBl1QEEhVCJcd3ypClRULPJsJEPpOxOk2fgwc.zdves0CN8dzkAq
 PqwfPQaS0ctWMkk25jKaFRyPW2YVZTsinr3_XoboQUwDWpTBpOaFKg3lnrOfAqIbcihgDRZZsl2T
 bl8AEr84cQxjft6O6CtSiNb.VtDywFcQBFWz2z1csbqWJqs1cd8BJZbkwVJ5lYTQrpXFpD9nPtR4
 zifo.rCXn6lFexy4Rm6mcnjsW2GeGJuQAE8oaWP.ZJ8H_L4RgZZuwAQqqQpw_gd2RsQ5hE57HW8Q
 D0SYRnKakfqMsbU57k8HNBAzJ7H_orE0kQZuydv8YUazTNPjWd3ytk9_uhZ7LNJ9VaYnqJ_fRG11
 fUg9XWcQx9BurWCd6FL5zcZ78.8KFAFhJwe.ZiZolRT4ivpHdbvb7AKpwvpLRZf95EFv9kYWc5qh
 rq8jZiX.J9hMiDd2fKjTb4KtBXGTMByaqvYZeOEFKAH3e_iR26heh9GNm3gQ_Y3d9iKG1SsNxIdB
 1Ytotrlw350wUff.ouneYdC6nKH.USBoYS8S7HynyKtxQirVKCWHJXvCoDRbdqZG3.TxNUD3dzL5
 YGIJbd2qFwmrbLhUV_xwcBUYqTOlgK3PidjXNV37.rm6XnlY5BbMWUXS9wSQhLk8aeI0NemuGiXf
 ODC7xKv.5ZZ9h.HEw0T6aGbDoHsgzA9_UHbYLaBgac.LjjhnmFqHQxATLt3KvhJGGTHwzZSNOOE9
 QQBjwwvB9ePdcP.l_MUZm725UVIWO3csY69YbCMHxwDMH2FAMvuToQsGKhTrzh2SiUbFOubSgoUE
 nvdaKGkNThtOvtwjv0pzLceprZMGb4fqqBvsJYPhkD4yPyzXOu91eT4_SgAzUa9GN3JKTlwW9ySo
 05MX7Wgn3lQ9SnuqeYyrlXt59G1cnHMzkj_PP6IJWwIC7VGQMcUZpl8M71VDz938uA9GVKzJpvJl
 6Pq.w.fYvOE020iImL..KFPPIbfzQdkUj11Cf4sjZAaqZ8MJKVkEL7umJrlncBf_zaPctNJCafeJ
 wJUqpr.nba5x_DrPZq3yOUshwLlmn307sPiUy6mEhlvQD8vdP_4WYMRcR6aAreAFSjnLhC8hanlu
 iDRXQRmdKXG2kZbKQjfXpofj2anJhQTOjtOjVMeQqP1XH9R9mJQ--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic308.consmr.mail.bf2.yahoo.com with HTTP; Thu, 9 Jul 2020 18:36:01 +0000
Date: Thu, 9 Jul 2020 18:35:59 +0000 (UTC)
To: "ibm-acpi-devel@lists.sourceforge.net"
 <ibm-acpi-devel@lists.sourceforge.net>
Message-ID: <1904145900.5044253.1594319759356@mail.yahoo.com>
MIME-Version: 1.0
References: <1904145900.5044253.1594319759356.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.16197 YMailNorrin Mozilla/5.0 (X11; Ubuntu;
 Linux x86_64; rv:78.0) Gecko/20100101 Firefox/78.0
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ubuntu.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (cicuto.riccardo[at]yahoo.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [74.6.130.41 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [74.6.130.41 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 HTML_FONT_FACE_BAD     BODY: HTML font face is not a word
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jtbP4-00CQf4-TS
X-Mailman-Approved-At: Mon, 27 Jul 2020 01:42:52 +0000
Subject: [ibm-acpi-devel] unhandled HKEY event 0x6031 - Thinkpad X1 Extreme
 2nd gen 20QV-00C0IX
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
From: Riccardo Cicuto via ibm-acpi-devel <ibm-acpi-devel@lists.sourceforge.net>
Reply-To: Riccardo Cicuto <cicuto.riccardo@yahoo.com>
Content-Type: multipart/mixed; boundary="===============7231121644298465379=="
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

--===============7231121644298465379==
Content-Type: multipart/alternative; 
	boundary="----=_Part_5044252_169780221.1594319759354"
Content-Length: 20106

------=_Part_5044252_169780221.1594319759354
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I'm experiencing frequent crashes. The laptop has a dual boot win10/ubuntu2=
0.04, but i work only with Ubuntu. The crash comes always when I re-launch =
a command to a virtualbox vms from a terminator shell by pressing arrow-up =
(last command from history) and Enter. Here a slice of system.log:

Jul=C2=A0 9 18:29:33 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5296.898882=
] thinkpad_acpi: please report the conditions when this event happened to i=
bm-acpi-devel@lists.sourceforge.netJul=C2=A0 9 18:29:48 riccardo-ThinkPad-X=
1-Extreme-2nd ubuntu-appindicators@ubuntu.com[2525]: Slack1, Impossible to =
lookup icon for 'Slack1_2-panel'
Jul=C2=A0 9 18:29:48 riccardo-ThinkPad-X1-Extreme-2nd gnome-shell[2525]: JS=
 ERROR: Exception in callback for signal: icon: Error: Argument 'filename' =
(type filename) may not be null#012_createIconByName@/usr/share/gnome-shell=
/extensions/ubuntu-appindicators@ubuntu.com/appIndicator.js:406:26#012_cach=
eOrCreateIconByName@/usr/share/gnome-shell/extensions/ubuntu-appindicators@=
ubuntu.com/appIndicator.js:368:14#012_updateIconByType@/usr/share/gnome-she=
ll/extensions/ubuntu-appindicators@ubuntu.com/appIndicator.js:574:18#012_up=
dateIcon@/usr/share/gnome-shell/extensions/ubuntu-appindicators@ubuntu.com/=
appIndicator.js:601:14#012_emit@resource:///org/gnome/gjs/modules/core/_sig=
nals.js:133:47#012_onPropertiesChanged/<@/usr/share/gnome-shell/extensions/=
ubuntu-appindicators@ubuntu.com/appIndicator.js:220:22#012_onPropertiesChan=
ged@/usr/share/gnome-shell/extensions/ubuntu-appindicators@ubuntu.com/appIn=
dicator.js:214:15#012refreshPropertyOnProxy/<@/usr/share/gnome-shell/extens=
ions/ubuntu-appindicators@ubuntu.com/util.js:51:19
Jul=C2=A0 9 18:29:55 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5318.847363=
] thinkpad_acpi: unhandled HKEY event 0x6031
Jul=C2=A0 9 18:29:55 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5318.847366=
] thinkpad_acpi: please report the conditions when this event happened to i=
bm-acpi-devel@lists.sourceforge.net
Jul=C2=A0 9 18:32:13 riccardo-ThinkPad-X1-Extreme-2nd gnome-shell[2525]: ..=
/clutter/clutter/clutter-actor.c:10556: The clutter_actor_set_allocation() =
function can only be called from within the implementation of the ClutterAc=
tor::allocate() virtual function.
Jul=C2=A0 9 18:32:14 riccardo-ThinkPad-X1-Extreme-2nd ubuntu-appindicators@=
ubuntu.com[2525]: Slack1, Impossible to lookup icon for 'Slack1_3-panel'
Jul=C2=A0 9 18:32:14 riccardo-ThinkPad-X1-Extreme-2nd gnome-shell[2525]: JS=
 ERROR: Exception in callback for signal: icon: Error: Argument 'filename' =
(type filename) may not be null#012_createIconByName@/usr/share/gnome-shell=
/extensions/ubuntu-appindicators@ubuntu.com/appIndicator.js:406:26#012_cach=
eOrCreateIconByName@/usr/share/gnome-shell/extensions/ubuntu-appindicators@=
ubuntu.com/appIndicator.js:368:14#012_updateIconByType@/usr/share/gnome-she=
ll/extensions/ubuntu-appindicators@ubuntu.com/appIndicator.js:574:18#012_up=
dateIcon@/usr/share/gnome-shell/extensions/ubuntu-appindicators@ubuntu.com/=
appIndicator.js:601:14#012_emit@resource:///org/gnome/gjs/modules/core/_sig=
nals.js:133:47#012_onPropertiesChanged/<@/usr/share/gnome-shell/extensions/=
ubuntu-appindicators@ubuntu.com/appIndicator.js:220:22#012_onPropertiesChan=
ged@/usr/share/gnome-shell/extensions/ubuntu-appindicators@ubuntu.com/appIn=
dicator.js:214:15#012refreshPropertyOnProxy/<@/usr/share/gnome-shell/extens=
ions/ubuntu-appindicators@ubuntu.com/util.js:51:19
Jul=C2=A0 9 18:32:31 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5474.278034=
] thinkpad_acpi: unhandled HKEY event 0x6031
Jul=C2=A0 9 18:32:31 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5474.278035=
] thinkpad_acpi: please report the conditions when this event happened to i=
bm-acpi-devel@lists.sourceforge.net
Jul=C2=A0 9 18:32:34 riccardo-ThinkPad-X1-Extreme-2nd gnome-shell[5707]: [5=
699:5699:0709/183234.149220:ERROR:CONSOLE(1960)] "Can only perform operatio=
n while paused.", source: devtools://devtools/bundled/sdk/sdk.js (1960)
Jul=C2=A0 9 18:32:34 riccardo-ThinkPad-X1-Extreme-2nd gnome-shell[5707]: [5=
699:5699:0709/183234.149292:ERROR:CONSOLE(216)] "Extension server error: In=
spector protocol error: Can only perform operation while paused.", source: =
devtools://devtools/bundled/extensions/extensions.js (216)
Jul=C2=A0 9 18:32:51 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5494.194274=
] thinkpad_acpi: unhandled HKEY event 0x6031
Jul=C2=A0 9 18:32:51 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5494.194277=
] thinkpad_acpi: please report the conditions when this event happened to i=
bm-acpi-devel@lists.sourceforge.net
Jul=C2=A0 9 18:34:28 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5592.109220=
] mce: CPU11: Core temperature above threshold, cpu clock throttled (total =
events =3D 7290)
Jul=C2=A0 9 18:34:28 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5592.109220=
] mce: CPU5: Core temperature above threshold, cpu clock throttled (total e=
vents =3D 7290)
Jul=C2=A0 9 18:34:28 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5592.109221=
] mce: CPU11: Package temperature above threshold, cpu clock throttled (tot=
al events =3D 42328)
Jul=C2=A0 9 18:34:28 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5592.109222=
] mce: CPU5: Package temperature above threshold, cpu clock throttled (tota=
l events =3D 42328)
Jul=C2=A0 9 18:34:28 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5592.109257=
] mce: CPU6: Package temperature above threshold, cpu clock throttled (tota=
l events =3D 42328)
Jul=C2=A0 9 18:34:28 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5592.109258=
] mce: CPU0: Package temperature above threshold, cpu clock throttled (tota=
l events =3D 42328)
Jul=C2=A0 9 18:34:28 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5592.109259=
] mce: CPU1: Package temperature above threshold, cpu clock throttled (tota=
l events =3D 42328)
Jul=C2=A0 9 18:34:28 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5592.109260=
] mce: CPU7: Package temperature above threshold, cpu clock throttled (tota=
l events =3D 42328)
Jul=C2=A0 9 18:34:28 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5592.109261=
] mce: CPU2: Package temperature above threshold, cpu clock throttled (tota=
l events =3D 42328)
Jul=C2=A0 9 18:34:28 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5592.109262=
] mce: CPU4: Package temperature above threshold, cpu clock throttled (tota=
l events =3D 42328)
Jul=C2=A0 9 18:34:28 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5592.109263=
] mce: CPU10: Package temperature above threshold, cpu clock throttled (tot=
al events =3D 42328)
Jul=C2=A0 9 18:34:28 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5592.109264=
] mce: CPU3: Package temperature above threshold, cpu clock throttled (tota=
l events =3D 42328)
Jul=C2=A0 9 18:34:28 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5592.109265=
] mce: CPU9: Package temperature above threshold, cpu clock throttled (tota=
l events =3D 42328)
Jul=C2=A0 9 18:34:28 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5592.109265=
] mce: CPU8: Package temperature above threshold, cpu clock throttled (tota=
l events =3D 42328)
Jul=C2=A0 9 18:34:28 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5592.110199=
] mce: CPU11: Core temperature/speed normal
Jul=C2=A0 9 18:34:28 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5592.110200=
] mce: CPU5: Core temperature/speed normal
Jul=C2=A0 9 18:34:28 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5592.110201=
] mce: CPU11: Package temperature/speed normal
Jul=C2=A0 9 18:34:28 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5592.110201=
] mce: CPU5: Package temperature/speed normal
Jul=C2=A0 9 18:34:28 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5592.110238=
] mce: CPU1: Package temperature/speed normal
Jul=C2=A0 9 18:34:28 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5592.110239=
] mce: CPU7: Package temperature/speed normal
Jul=C2=A0 9 18:34:28 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5592.110240=
] mce: CPU6: Package temperature/speed normal
Jul=C2=A0 9 18:34:28 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5592.110240=
] mce: CPU0: Package temperature/speed normal
Jul=C2=A0 9 18:34:28 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5592.110241=
] mce: CPU3: Package temperature/speed normal
Jul=C2=A0 9 18:34:28 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5592.110242=
] mce: CPU9: Package temperature/speed normal
Jul=C2=A0 9 18:34:28 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5592.110243=
] mce: CPU8: Package temperature/speed normal
Jul=C2=A0 9 18:34:28 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5592.110243=
] mce: CPU2: Package temperature/speed normal
Jul=C2=A0 9 18:34:28 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5592.110244=
] mce: CPU4: Package temperature/speed normal
Jul=C2=A0 9 18:34:28 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5592.110245=
] mce: CPU10: Package temperature/speed normal
Jul=C2=A0 9 18:34:40 riccardo-ThinkPad-X1-Extreme-2nd gnome-shell[2525]: Co=
uld not create selection source for X11: Format TARGETS not supported
uname -a
Linux atlantis 5.4.0-40-generic #44-Ubuntu SMP Tue Jun 23 00:01:04 UTC 2020=
 x86_64 x86_64 x86_64 GNU/Linux
lsb_release -a
No LSB modules are available.
Distributor ID:=C2=A0=C2=A0 =C2=A0Ubuntu
Description:=C2=A0=C2=A0 =C2=A0Ubuntu 20.04 LTS
Release:=C2=A0=C2=A0 =C2=A020.04
Codename:=C2=A0=C2=A0 =C2=A0focal
Thank You, Best Regards
Riccardo

------=_Part_5044252_169780221.1594319759354
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"yahoo-style-wrap" style=3D"font-fami=
ly:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div dir=
=3D"ltr" data-setdir=3D"false"><div><div dir=3D"ltr" data-setdir=3D"false">=
<font size=3D"3" face=3D"&quot;courier new&quot;, courier, monaco, monospac=
e, sans-serif">I'm experiencing frequent crashes. The laptop has a dual boo=
t win10/ubuntu20.04, but i work only with Ubuntu. The crash comes always wh=
en I re-launch a command to a virtualbox vms from a terminator shell by pre=
ssing arrow-up (last command from history) and Enter. Here a slice of syste=
m.log:</font><b><br></b></div><div><b><br></b></div><div><b>Jul&nbsp; 9 18:=
29:33 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5296.898882] thinkpad_acpi=
: please report the conditions when this event happened to ibm-acpi-devel@l=
ists.sourceforge.net</b></div>Jul&nbsp; 9 18:29:48 riccardo-ThinkPad-X1-Ext=
reme-2nd ubuntu-appindicators@ubuntu.com[2525]: Slack1, Impossible to looku=
p icon for 'Slack1_2-panel'<br>Jul&nbsp; 9 18:29:48 riccardo-ThinkPad-X1-Ex=
treme-2nd gnome-shell[2525]: JS ERROR: Exception in callback for signal: ic=
on: Error: Argument 'filename' (type filename) may not be null#012_createIc=
onByName@/usr/share/gnome-shell/extensions/ubuntu-appindicators@ubuntu.com/=
appIndicator.js:406:26#012_cacheOrCreateIconByName@/usr/share/gnome-shell/e=
xtensions/ubuntu-appindicators@ubuntu.com/appIndicator.js:368:14#012_update=
IconByType@/usr/share/gnome-shell/extensions/ubuntu-appindicators@ubuntu.co=
m/appIndicator.js:574:18#012_updateIcon@/usr/share/gnome-shell/extensions/u=
buntu-appindicators@ubuntu.com/appIndicator.js:601:14#012_emit@resource:///=
org/gnome/gjs/modules/core/_signals.js:133:47#012_onPropertiesChanged/&lt;@=
/usr/share/gnome-shell/extensions/ubuntu-appindicators@ubuntu.com/appIndica=
tor.js:220:22#012_onPropertiesChanged@/usr/share/gnome-shell/extensions/ubu=
ntu-appindicators@ubuntu.com/appIndicator.js:214:15#012refreshPropertyOnPro=
xy/&lt;@/usr/share/gnome-shell/extensions/ubuntu-appindicators@ubuntu.com/u=
til.js:51:19<br><b>Jul&nbsp; 9 18:29:55 riccardo-ThinkPad-X1-Extreme-2nd ke=
rnel: [ 5318.847363] thinkpad_acpi: unhandled HKEY event 0x6031<br>Jul&nbsp=
; 9 18:29:55 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5318.847366] thinkp=
ad_acpi: please report the conditions when this event happened to ibm-acpi-=
devel@lists.sourceforge.net</b><br>Jul&nbsp; 9 18:32:13 riccardo-ThinkPad-X=
1-Extreme-2nd gnome-shell[2525]: ../clutter/clutter/clutter-actor.c:10556: =
The clutter_actor_set_allocation() function can only be called from within =
the implementation of the ClutterActor::allocate() virtual function.<br>Jul=
&nbsp; 9 18:32:14 riccardo-ThinkPad-X1-Extreme-2nd ubuntu-appindicators@ubu=
ntu.com[2525]: Slack1, Impossible to lookup icon for 'Slack1_3-panel'<br>Ju=
l&nbsp; 9 18:32:14 riccardo-ThinkPad-X1-Extreme-2nd gnome-shell[2525]: JS E=
RROR: Exception in callback for signal: icon: Error: Argument 'filename' (t=
ype filename) may not be null#012_createIconByName@/usr/share/gnome-shell/e=
xtensions/ubuntu-appindicators@ubuntu.com/appIndicator.js:406:26#012_cacheO=
rCreateIconByName@/usr/share/gnome-shell/extensions/ubuntu-appindicators@ub=
untu.com/appIndicator.js:368:14#012_updateIconByType@/usr/share/gnome-shell=
/extensions/ubuntu-appindicators@ubuntu.com/appIndicator.js:574:18#012_upda=
teIcon@/usr/share/gnome-shell/extensions/ubuntu-appindicators@ubuntu.com/ap=
pIndicator.js:601:14#012_emit@resource:///org/gnome/gjs/modules/core/_signa=
ls.js:133:47#012_onPropertiesChanged/&lt;@/usr/share/gnome-shell/extensions=
/ubuntu-appindicators@ubuntu.com/appIndicator.js:220:22#012_onPropertiesCha=
nged@/usr/share/gnome-shell/extensions/ubuntu-appindicators@ubuntu.com/appI=
ndicator.js:214:15#012refreshPropertyOnProxy/&lt;@/usr/share/gnome-shell/ex=
tensions/ubuntu-appindicators@ubuntu.com/util.js:51:19<br><b>Jul&nbsp; 9 18=
:32:31 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5474.278034] thinkpad_acp=
i: unhandled HKEY event 0x6031<br>Jul&nbsp; 9 18:32:31 riccardo-ThinkPad-X1=
-Extreme-2nd kernel: [ 5474.278035] thinkpad_acpi: please report the condit=
ions when this event happened to ibm-acpi-devel@lists.sourceforge.net</b><b=
r>Jul&nbsp; 9 18:32:34 riccardo-ThinkPad-X1-Extreme-2nd gnome-shell[5707]: =
[5699:5699:0709/183234.149220:ERROR:CONSOLE(1960)] "Can only perform operat=
ion while paused.", source: devtools://devtools/bundled/sdk/sdk.js (1960)<b=
r>Jul&nbsp; 9 18:32:34 riccardo-ThinkPad-X1-Extreme-2nd gnome-shell[5707]: =
[5699:5699:0709/183234.149292:ERROR:CONSOLE(216)] "Extension server error: =
Inspector protocol error: Can only perform operation while paused.", source=
: devtools://devtools/bundled/extensions/extensions.js (216)<br><b>Jul&nbsp=
; 9 18:32:51 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5494.194274] thinkp=
ad_acpi: unhandled HKEY event 0x6031<br>Jul&nbsp; 9 18:32:51 riccardo-Think=
Pad-X1-Extreme-2nd kernel: [ 5494.194277] thinkpad_acpi: please report the =
conditions when this event happened to ibm-acpi-devel@lists.sourceforge.net=
</b><br>Jul&nbsp; 9 18:34:28 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 559=
2.109220] mce: CPU11: Core temperature above threshold, cpu clock throttled=
 (total events =3D 7290)<br>Jul&nbsp; 9 18:34:28 riccardo-ThinkPad-X1-Extre=
me-2nd kernel: [ 5592.109220] mce: CPU5: Core temperature above threshold, =
cpu clock throttled (total events =3D 7290)<br>Jul&nbsp; 9 18:34:28 riccard=
o-ThinkPad-X1-Extreme-2nd kernel: [ 5592.109221] mce: CPU11: Package temper=
ature above threshold, cpu clock throttled (total events =3D 42328)<br>Jul&=
nbsp; 9 18:34:28 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5592.109222] mc=
e: CPU5: Package temperature above threshold, cpu clock throttled (total ev=
ents =3D 42328)<br>Jul&nbsp; 9 18:34:28 riccardo-ThinkPad-X1-Extreme-2nd ke=
rnel: [ 5592.109257] mce: CPU6: Package temperature above threshold, cpu cl=
ock throttled (total events =3D 42328)<br>Jul&nbsp; 9 18:34:28 riccardo-Thi=
nkPad-X1-Extreme-2nd kernel: [ 5592.109258] mce: CPU0: Package temperature =
above threshold, cpu clock throttled (total events =3D 42328)<br>Jul&nbsp; =
9 18:34:28 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5592.109259] mce: CPU=
1: Package temperature above threshold, cpu clock throttled (total events =
=3D 42328)<br>Jul&nbsp; 9 18:34:28 riccardo-ThinkPad-X1-Extreme-2nd kernel:=
 [ 5592.109260] mce: CPU7: Package temperature above threshold, cpu clock t=
hrottled (total events =3D 42328)<br>Jul&nbsp; 9 18:34:28 riccardo-ThinkPad=
-X1-Extreme-2nd kernel: [ 5592.109261] mce: CPU2: Package temperature above=
 threshold, cpu clock throttled (total events =3D 42328)<br>Jul&nbsp; 9 18:=
34:28 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5592.109262] mce: CPU4: Pa=
ckage temperature above threshold, cpu clock throttled (total events =3D 42=
328)<br>Jul&nbsp; 9 18:34:28 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 559=
2.109263] mce: CPU10: Package temperature above threshold, cpu clock thrott=
led (total events =3D 42328)<br>Jul&nbsp; 9 18:34:28 riccardo-ThinkPad-X1-E=
xtreme-2nd kernel: [ 5592.109264] mce: CPU3: Package temperature above thre=
shold, cpu clock throttled (total events =3D 42328)<br>Jul&nbsp; 9 18:34:28=
 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5592.109265] mce: CPU9: Package=
 temperature above threshold, cpu clock throttled (total events =3D 42328)<=
br>Jul&nbsp; 9 18:34:28 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5592.109=
265] mce: CPU8: Package temperature above threshold, cpu clock throttled (t=
otal events =3D 42328)<br>Jul&nbsp; 9 18:34:28 riccardo-ThinkPad-X1-Extreme=
-2nd kernel: [ 5592.110199] mce: CPU11: Core temperature/speed normal<br>Ju=
l&nbsp; 9 18:34:28 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5592.110200] =
mce: CPU5: Core temperature/speed normal<br>Jul&nbsp; 9 18:34:28 riccardo-T=
hinkPad-X1-Extreme-2nd kernel: [ 5592.110201] mce: CPU11: Package temperatu=
re/speed normal<br>Jul&nbsp; 9 18:34:28 riccardo-ThinkPad-X1-Extreme-2nd ke=
rnel: [ 5592.110201] mce: CPU5: Package temperature/speed normal<br>Jul&nbs=
p; 9 18:34:28 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5592.110238] mce: =
CPU1: Package temperature/speed normal<br>Jul&nbsp; 9 18:34:28 riccardo-Thi=
nkPad-X1-Extreme-2nd kernel: [ 5592.110239] mce: CPU7: Package temperature/=
speed normal<br>Jul&nbsp; 9 18:34:28 riccardo-ThinkPad-X1-Extreme-2nd kerne=
l: [ 5592.110240] mce: CPU6: Package temperature/speed normal<br>Jul&nbsp; =
9 18:34:28 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5592.110240] mce: CPU=
0: Package temperature/speed normal<br>Jul&nbsp; 9 18:34:28 riccardo-ThinkP=
ad-X1-Extreme-2nd kernel: [ 5592.110241] mce: CPU3: Package temperature/spe=
ed normal<br>Jul&nbsp; 9 18:34:28 riccardo-ThinkPad-X1-Extreme-2nd kernel: =
[ 5592.110242] mce: CPU9: Package temperature/speed normal<br>Jul&nbsp; 9 1=
8:34:28 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5592.110243] mce: CPU8: =
Package temperature/speed normal<br>Jul&nbsp; 9 18:34:28 riccardo-ThinkPad-=
X1-Extreme-2nd kernel: [ 5592.110243] mce: CPU2: Package temperature/speed =
normal<br>Jul&nbsp; 9 18:34:28 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5=
592.110244] mce: CPU4: Package temperature/speed normal<br>Jul&nbsp; 9 18:3=
4:28 riccardo-ThinkPad-X1-Extreme-2nd kernel: [ 5592.110245] mce: CPU10: Pa=
ckage temperature/speed normal<br>Jul&nbsp; 9 18:34:40 riccardo-ThinkPad-X1=
-Extreme-2nd gnome-shell[2525]: Could not create selection source for X11: =
Format TARGETS not supported</div><div><br></div><div dir=3D"ltr" data-setd=
ir=3D"false"><div><font size=3D"3" face=3D"&quot;courier new&quot;, courier=
, monaco, monospace, sans-serif">uname -a<br></font><div><font size=3D"3" f=
ace=3D"&quot;courier new&quot;, courier, monaco, monospace, sans-serif">Lin=
ux atlantis 5.4.0-40-generic #44-Ubuntu SMP Tue Jun 23 00:01:04 UTC 2020 x8=
6_64 x86_64 x86_64 GNU/Linux</font></div><div><font size=3D"3" face=3D"&quo=
t;courier new&quot;, courier, monaco, monospace, sans-serif"><br></font></d=
iv><div dir=3D"ltr" data-setdir=3D"false"><font size=3D"3" face=3D"&quot;co=
urier new&quot;, courier, monaco, monospace, sans-serif"><div>lsb_release -=
a<br>No LSB modules are available.<br>Distributor ID:&nbsp;&nbsp; &nbsp;Ubu=
ntu<br>Description:&nbsp;&nbsp; &nbsp;Ubuntu 20.04 LTS<br>Release:&nbsp;&nb=
sp; &nbsp;20.04<br><div>Codename:&nbsp;&nbsp; &nbsp;focal</div><div><br></d=
iv><div dir=3D"ltr" data-setdir=3D"false">Thank You, Best Regards<br>Riccar=
do</div></div></font></div></div><br></div></div></div></body></html>
------=_Part_5044252_169780221.1594319759354--


--===============7231121644298465379==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7231121644298465379==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

--===============7231121644298465379==--

