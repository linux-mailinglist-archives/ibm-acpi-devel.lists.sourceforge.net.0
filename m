Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 08177517614
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  2 May 2022 19:43:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1nla4L-0000NH-7a; Mon, 02 May 2022 17:42:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <lyude@redhat.com>) id 1nla4J-0000NB-FI
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 02 May 2022 17:42:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oX2QCt8rCc+oF9sCgtcKZ1Q9e7gcbTc5DzDbSOW56p0=; b=mMbnBOzLyipr1RVpxOyRKRb+hE
 +JbGTXjDgeDgC+kaMSPxGEwOw6LQ/ouEUmduAjXpaYMSMoI1jyu7g3EkJU3nM/3ImSB8mU3zoMUgV
 Xvb9KWARcPFB+nqI1Jug9/bp0SJ46ivBV/HrpfUPhyuc+Twj8V6Xd8Lux4Ve7QAJ77Co=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oX2QCt8rCc+oF9sCgtcKZ1Q9e7gcbTc5DzDbSOW56p0=; b=kWWnYLla6yoz/iwtGqiCxjIS2Z
 xrwWHtItmcAO2AOhPinC6X12L60SCcN4IHozHWPcu/LB8dnAPHYEACyg0qqKX1XSYZOPzfBNKwruk
 kWJAaQunUw7oCCgdPsz8hwgaembY70a6fugnEkM376pyUGxdLpLK5hDw5ipjNBT49G08=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nla4E-0007CY-Io
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 02 May 2022 17:42:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1651513352;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=oX2QCt8rCc+oF9sCgtcKZ1Q9e7gcbTc5DzDbSOW56p0=;
 b=H94h5zunRvh1G35cMT4aeOykk6mVSZadh3EmhNXAod364t5toQxl5bnxUcsLbDHIYq4C1P
 /e3e4bR8xJB6/1MFFAD6RUx1Mum013QcgH3waW5bZWfzdwlW6q9ARHgOw/Gu5SWIWz8T/J
 qWfE3DBucDO3BFE71Fq7DXJOoIN33Pw=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-350-YFImbb8NN6iONd3semmugg-1; Mon, 02 May 2022 13:42:31 -0400
X-MC-Unique: YFImbb8NN6iONd3semmugg-1
Received: by mail-qv1-f69.google.com with SMTP id
 kc6-20020a056214410600b0045a97658c7dso1170913qvb.16
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 02 May 2022 10:42:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=oX2QCt8rCc+oF9sCgtcKZ1Q9e7gcbTc5DzDbSOW56p0=;
 b=Ze8qSzEmOArVbEI4NDKth3bE9Yr6eQH18xIVbI22krBYemqK7hSUAVl8H2ZRt1UwNt
 X0KXeIen2Ib7ge+7tM5dlD0fSWas8CEHqf3wk7Jx2T/V36wa0IZbJ4XiP81J7NUpcSgY
 q9R0HJGzqtplClaeI1aJtuiRhHIvhVPCg2+pFRBzrEpUeIHbTdDolfl2/ZgLz2Qz5poY
 pd2N5g8ypwwD7yLnE72f5AF3Klc2cwUrnvgxNv7yUQXtrYTI/RPDB1S/O9bSCI1nCfQv
 2vFJct5PjpTw8fjO55/jplBbRSPMk2Fi13NGOOKB+sAEDmjVKhzS2noNOLB4oTnMe/0o
 sNTg==
X-Gm-Message-State: AOAM532yTo0NN++xVV3MkxhGVENxXwxxbfWUNf5u+Eq+HqcsM4vdeF44
 N0oeEZ3qQNf7fs2/jrVekjB1i/rS/Zxj53Cwo3H5vO0cfl0ML79nC2KM9L+MTDohrg+YBYt+VOy
 4vEJzhVimESDeQCLUhoNVmSJGICGuKA6fhLY=
X-Received: by 2002:a05:622a:1456:b0:2f2:4ff:39a1 with SMTP id
 v22-20020a05622a145600b002f204ff39a1mr11395133qtx.164.1651513350895; 
 Mon, 02 May 2022 10:42:30 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyVlI+WvWSeI1gCt0yxhCHNFIeT/+R26JugPN+2OgpT4RSLl4o9vy34Ma1ONh6I84/8Qm9tqg==
X-Received: by 2002:a05:622a:1456:b0:2f2:4ff:39a1 with SMTP id
 v22-20020a05622a145600b002f204ff39a1mr11395121qtx.164.1651513350693; 
 Mon, 02 May 2022 10:42:30 -0700 (PDT)
Received: from [192.168.8.138] (static-71-184-137-158.bstnma.ftas.verizon.net.
 [71.184.137.158]) by smtp.gmail.com with ESMTPSA id
 i2-20020ac871c2000000b002f39b99f66asm4474637qtp.4.2022.05.02.10.42.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 May 2022 10:42:29 -0700 (PDT)
Message-ID: <2769588a352e9c3b43a4e09afff100d52a9ba524.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Mark Pearson <markpearson@lenovo.com>, 
 ibm-acpi-devel@lists.sourceforge.net, platform-driver-x86@vger.kernel.org
Date: Mon, 02 May 2022 13:42:28 -0400
In-Reply-To: <d3461670-a905-4956-4f4d-d847adf4289b@lenovo.com>
References: <20220429211418.4546-1-lyude@redhat.com>
 <20220429211418.4546-2-lyude@redhat.com>
 <d3461670-a905-4956-4f4d-d847adf4289b@lenovo.com>
Organization: Red Hat Inc.
User-Agent: Evolution 3.42.4 (3.42.4-2.fc35)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Some answers/comments down below On Fri, 2022-04-29 at 21:25
 -0400, Mark Pearson wrote: > Hi Lyude > > On 4/29/22 17:14, Lyude Paul wrote:
 > > The new method of probing dual fan support introduced in: > > > >
 bf779aaf56ea ("platform/ [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nla4E-0007CY-Io
Subject: Re: [ibm-acpi-devel] [External] [PATCH 1/2] platform/x86:
 thinkpad_acpi: Restore X1 Carbon 9th Gen dual fan quirk
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
Cc: linux-hwmon@vger.kernel.org, Hans de Goede <hdegoede@redhat.com>,
 linux-kernel@vger.kernel.org, Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Mark Gross <markgross@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

U29tZSBhbnN3ZXJzL2NvbW1lbnRzIGRvd24gYmVsb3cKCk9uIEZyaSwgMjAyMi0wNC0yOSBhdCAy
MToyNSAtMDQwMCwgTWFyayBQZWFyc29uIHdyb3RlOgo+IEhpIEx5dWRlCj4gCj4gT24gNC8yOS8y
MiAxNzoxNCwgTHl1ZGUgUGF1bCB3cm90ZToKPiA+IFRoZSBuZXcgbWV0aG9kIG9mIHByb2Jpbmcg
ZHVhbCBmYW4gc3VwcG9ydCBpbnRyb2R1Y2VkIGluOgo+ID4gCj4gPiBiZjc3OWFhZjU2ZWEgKCJw
bGF0Zm9ybS94ODY6IHRoaW5rcGFkX2FjcGk6IEFkZCBkdWFsIGZhbiBwcm9iZSIpCj4gPiAKPiA+
IFdoaWxlIHRoaXMgY29tbWl0IHNheXMgdGhpcyB3b3JrcyBvbiB0aGUgWDEgQ2FyYm9uIDl0aCBH
ZW4sIGl0IGFjdHVhbGx5Cj4gPiBqdXN0IHJlc3VsdHMgaW4gaGlkaW5nIHRoZSBzZWNvbmQgZmFu
IG9uIG15IGxvY2FsIG1hY2hpbmUuIEFkZGl0aW9uYWxseSwKPiA+IEknbSBmYWlybHkgc3VyZSB0
aGlzIG1hY2hpbmUgcG93ZXJzIG9uIHF1aXRlIG9mdGVuIHdpdGhvdXQgZWl0aGVyIG9mIHRoZQo+
ID4gdHdvIGZhbnMgc3Bpbm5pbmcuCj4gPiAKPiA+IFNvIGxldCdzIGZpeCB0aGlzIGJ5IGFkZGlu
ZyBiYWNrIHRoZSBkdWFsIGZhbiBxdWlyayBmb3IgdGhlIFgxIENhcmJvbiA5dGgKPiA+IEdlbi4K
PiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogTHl1ZGUgUGF1bCA8bHl1ZGVAcmVkaGF0LmNvbT4KPiA+
IEZpeGVzOiBiZjc3OWFhZjU2ZWEgKCJwbGF0Zm9ybS94ODY6IHRoaW5rcGFkX2FjcGk6IEFkZCBk
dWFsIGZhbiBwcm9iZSIpCj4gPiBDYzogTWFyayBQZWFyc29uIDxtYXJrcGVhcnNvbkBsZW5vdm8u
Y29tPgo+ID4gQ2M6IEhhbnMgZGUgR29lZGUgPGhkZWdvZWRlQHJlZGhhdC5jb20+Cj4gPiBDYzog
SGVucmlxdWUgZGUgTW9yYWVzIEhvbHNjaHVoIDxobWhAaG1oLmVuZy5icj4KPiA+IENjOiBNYXJr
IEdyb3NzIDxtYXJrZ3Jvc3NAa2VybmVsLm9yZz4KPiA+IENjOiBpYm0tYWNwaS1kZXZlbEBsaXN0
cy5zb3VyY2Vmb3JnZS5uZXQKPiA+IENjOiBwbGF0Zm9ybS1kcml2ZXIteDg2QHZnZXIua2VybmVs
Lm9yZwo+ID4gLS0tCj4gPiDCoGRyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5rcGFkX2FjcGkuYyB8
IDEgKwo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPiA+IAo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5rcGFkX2FjcGkuYwo+ID4gYi9kcml2ZXJz
L3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3BpLmMKPiA+IGluZGV4IGM1NjhmYWU1NmRiMi4uOTA2
N2ZkMGE5NDVjIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhpbmtwYWRf
YWNwaS5jCj4gPiArKysgYi9kcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3BpLmMKPiA+
IEBAIC04Njk5LDYgKzg2OTksNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHRwYWNwaV9xdWlyayBm
YW5fcXVpcmtfdGFibGVbXQo+ID4gX19pbml0Y29uc3QgPSB7Cj4gPiDCoMKgwqDCoMKgwqDCoMKg
VFBBQ1BJX1FfTE5WMygnTicsICcyJywgJ0UnLCBUUEFDUElfRkFOXzJDVEwpLMKgwqAvKiBQMSAv
IFgxIEV4dHJlbWUKPiA+ICgxc3QgZ2VuKSAqLwo+ID4gwqDCoMKgwqDCoMKgwqDCoFRQQUNQSV9R
X0xOVjMoJ04nLCAnMicsICdPJywgVFBBQ1BJX0ZBTl8yQ1RMKSzCoMKgLyogUDEgLyBYMSBFeHRy
ZW1lCj4gPiAoMm5kIGdlbikgKi8KPiA+IMKgwqDCoMKgwqDCoMKgwqBUUEFDUElfUV9MTlYzKCdO
JywgJzMnLCAnMCcsIFRQQUNQSV9GQU5fMkNUTCkswqDCoC8qIFAxNSAoMXN0IGdlbikgLwo+ID4g
UDE1diAoMXN0IGdlbikgKi8KPiA+ICvCoMKgwqDCoMKgwqDCoFRQQUNQSV9RX0xOVjMoJ04nLCAn
MycsICcyJywgVFBBQ1BJX0ZBTl8yQ1RMKSzCoCAvKiBYMSBDYXJib24gKDl0aAo+ID4gZ2VuKSAq
Lwo+ID4gwqDCoMKgwqDCoMKgwqDCoFRQQUNQSV9RX0xOVjMoJ04nLCAnMycsICc3JywgVFBBQ1BJ
X0ZBTl8yQ1RMKSzCoCAvKiBUMTVnICgybmQgZ2VuKQo+ID4gKi8KPiA+IMKgwqDCoMKgwqDCoMKg
wqBUUEFDUElfUV9MTlYzKCdOJywgJzEnLCAnTycsIFRQQUNQSV9GQU5fTk9GQU4pLMKgLyogWDEg
VGFibGV0ICgybmQKPiA+IGdlbikgKi8KPiA+IMKgfTsKPiBJIGp1c3QgZG91YmxlIGNoZWNrZWQg
dGhpcyBvbiBteSBYMUM5IC0gYW5kIGl0J3Mgd29ya2luZyBjb3JyZWN0bHkuIDJuZAo+IGZhbiBp
cyBkZXRlY3RlZCBjb3JyZWN0bHkuCj4gCj4gSSdkIHJhdGhlciB1bmRlcnN0YW5kIHdoeSBpdCdz
IG5vdCB3b3JraW5nIG9uIHlvdXIgc2V0dXAgdGhlbiBqdXN0Cj4gcmUtaW50cm9kdWNlIHRoZSBx
dWlyay4KCk9mIGNvdXJzZSEgSSBmaWd1cmVkIGFzIG11Y2gsIGl0J3MganVzdCBlYXN5IHRvIHN0
YXJ0IGNvbnZlcnNhdGlvbnMgd2l0aCBhCnJldmVydCA6UAoKPiAKPiBXaGF0IGhhcHBlbnMgb24g
eW91ciBzeXN0ZW0gd2hlbiB0aGUKPiDCoCByZXMgPSBmYW4yX2dldF9zcGVlZCgmc3BlZWQpOwo+
IGlzIGNhbGxlZD8gSWYgdGhhdCBpcyBmYWlsaW5nIGl0IG1lYW5zIHlvdXIgMm5kIGZhbiBpc24n
dCByZXNwb25kaW5nIGFuZAo+IHRoYXQncyBub3Qgc3VwcG9zZWQgdG8gaGFwcGVuLiBDb3VsZCB5
b3UgbGV0IG1lIGtub3cgaWYgeW91IGdldCBhbiBlcnJvcgo+IGNvZGUsIGlmIGl0IGhhcHBlbnMg
ZXZlcnkgYm9vdCwgZXRjCj4gSSBhc3N1bWUgd2hlbiB0aGUgZnVuY3Rpb24gaXMgY2FsbGVkIGxh
dGVyIGl0IHdvcmtzIHN1Y2Nlc3NmdWxseT8KCkl0IGRlZmluaXRlbHkgc2VlbXMgdG8gaGFwcGVu
IGV2ZXJ5IGJvb3QsIG5vdCBzdXJlIGFib3V0IHRoZSBlcnJvciBjb2RlIGl0CnJldHVybnMuIEkg
d2lsbCBjaGVjayBhbmQgZ2V0IHlvdSB0aGlzIGluZm8gYXNhcAoKPiAKPiBBbHNvIHBsZWFzZSBj
b25maXJtIHdoaWNoIEJJT1MgYW5kIEVDIHZlcnNpb24geW91IGhhdmUuCgpCSU9TIHZlcnNpb24g
TjMyRVQ3NVcgKDEuNTEpIHJlbGVhc2UgZGF0ZSAxMi8wMi8yMDIxLCBlbWJlZGRlZCBjb250cm9s
bGVyIGlzCjAuMS4zMgoKCj4gCj4gVGhhbmtzCj4gTWFyawo+IAoKLS0gCkNoZWVycywKIEx5dWRl
IFBhdWwgKHNoZS9oZXIpCiBTb2Z0d2FyZSBFbmdpbmVlciBhdCBSZWQgSGF0CgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmlibS1hY3BpLWRldmVsIG1h
aWxpbmcgbGlzdAppYm0tYWNwaS1kZXZlbEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9s
aXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vaWJtLWFjcGktZGV2ZWwK
