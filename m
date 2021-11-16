Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 806F5452F9E
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 16 Nov 2021 11:59:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1mmwAa-0003jF-GU; Tue, 16 Nov 2021 10:58:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hdegoede@redhat.com>) id 1mmwAY-0003ix-Rc
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 16 Nov 2021 10:58:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kY0B8yGVYk8MaOQx8xvl+ZB1I0VF4H2dddqWO+tZ2pc=; b=EcStu2zL7QMgBbGuVGZpWpKfvL
 DME52KHZlWl5qAghxdpXm3/g2xpWuxSn39i0ZtzxsunxTpq7yZ2Wr1eRPA4ZNscJJJYvvs8EwjM0R
 iQpXWyIT7uDL+tXGOVyc1d0f3qDnG8aRkcVfkTAUzpp3BnfChA4jjImP6AJS86CJmJB0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kY0B8yGVYk8MaOQx8xvl+ZB1I0VF4H2dddqWO+tZ2pc=; b=iwMbrTJpeEAOJrthgGz6gOI055
 ZxT/zN34ld1o2/+qlafs6rPcIFPKCpj7NQeuL0uRb+huvYlvkyy35LSbWJg+55CaARfaGVjqFC2I9
 4cUR8fW8cXUb75cwhtTEldN/WSCE4Ve8t2ULUK5Btv6/dfMU56rOn+XY5056p8UitWt4=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mmwAV-00EiB4-Nd
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 16 Nov 2021 10:58:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1637060301;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kY0B8yGVYk8MaOQx8xvl+ZB1I0VF4H2dddqWO+tZ2pc=;
 b=XdXnV8zWUe2u7QFcfv4ESqCbDuppkxfU1epWwpC2PSo47wtiUx/DtVWrl7z9op9YTmMGYk
 1LAwpXz85tUV/axlSH2d1HnJk7u1V/6Pg0tRz0LRqEiRwwbdouCIUOcPDIuZ6pAsHTIagW
 RndFcqnmnhsvSzOsebiw/7pNCQcHXkQ=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-328-p55axvgMP-aPSMi9hdssPQ-1; Tue, 16 Nov 2021 05:58:20 -0500
X-MC-Unique: p55axvgMP-aPSMi9hdssPQ-1
Received: by mail-ed1-f69.google.com with SMTP id
 y9-20020aa7c249000000b003e7bf7a1579so5451673edo.5
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 16 Nov 2021 02:58:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=kY0B8yGVYk8MaOQx8xvl+ZB1I0VF4H2dddqWO+tZ2pc=;
 b=Nq3Ylwv6ADPV0zpI/PoTfWApN5EJfzb0EavE75WtgF9kNXyUB+EkxIoG2JqE7i5ocy
 ngBq+Y7Bg6aU3llR6eF96YxxrQvqtfv1b8YjKL/NnxQiEct7//j6b/nVhBzow/gK6rNQ
 20DcvBHnN375uM84msyvia8hwSGYDe385uDrdveink94n7Lb3M/nhVt0tXu4dZv/LFGo
 CscG/1yktsXPXqXAtxIwpk7E5bU0Ei3w7v6yvdRMbm0BgFmOEHSSTyCW0R8nUIIp3GQM
 J2Lbl5bwgU9QDiiLBi8vk83rYLtqGl3feO5GB1ldE2PQc5HomNnwItgZerq4sAKrCz4P
 cAWQ==
X-Gm-Message-State: AOAM532FGfibCEU92AM9DTU/sIeWUyOIKHGZdje/muqT2gf0NxyibYyL
 ROwfKZO6rfKStcvQXqgnhsR8ay6mAYYD3UOWOgwzFwu6aBFvt0m+kSAJorPNo0Hvx43gUlT8q8i
 Vz+k/mWhXGC5QTxlGnwk2SeDA2Di3gmJ0CKY=
X-Received: by 2002:a17:907:2d0e:: with SMTP id
 gs14mr8757044ejc.249.1637060298621; 
 Tue, 16 Nov 2021 02:58:18 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxIEbJVQs6Ie/485xAX3626rJajgjdDhHYqVaN7DlmCbvpayCdiFexQj8i/fiIF/lTRfUn0LQ==
X-Received: by 2002:a17:907:2d0e:: with SMTP id
 gs14mr8756992ejc.249.1637060298317; 
 Tue, 16 Nov 2021 02:58:18 -0800 (PST)
Received: from ?IPV6:2001:1c00:c1e:bf00:1054:9d19:e0f0:8214?
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id bo20sm9304943edb.31.2021.11.16.02.58.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 16 Nov 2021 02:58:18 -0800 (PST)
Message-ID: <09a66da1-1a8b-a668-3179-81670303ea37@redhat.com>
Date: Tue, 16 Nov 2021 11:58:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
To: =?UTF-8?Q?Thomas_Wei=c3=9fschuh?= <linux@weissschuh.net>,
 linux-pm@vger.kernel.org, Sebastian Reichel <sre@kernel.org>,
 ibm-acpi-devel@lists.sourceforge.net, platform-driver-x86@vger.kernel.org,
 Mark Gross <markgross@kernel.org>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
References: <20211113104225.141333-1-linux@weissschuh.net>
 <20211113104225.141333-5-linux@weissschuh.net>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20211113104225.141333-5-linux@weissschuh.net>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -3.6 (---)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Thomas, Thank you for working on this! On 11/13/21 11:42,
    Thomas Weißschuh wrote: > This adds support for the inhibit-charge charge_behaviour
    through the > embedded controller of ThinkPads. > > Signed-off-by: Thomas
    Weißschuh <linux@weis [...] 
 
 Content analysis details:   (-3.6 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [170.10.133.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [170.10.133.124 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mmwAV-00EiB4-Nd
Subject: Re: [ibm-acpi-devel] [PATCH 4/4] platform/x86: thinkpad_acpi:
 support inhibit-charge
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
Cc: linrunner@gmx.net, nicolopiazzalunga@gmail.com, bberg@redhat.com,
 linux-kernel@vger.kernel.org, smclt30p@gmail.com, hadess@hadess.net,
 markpearson@lenovo.com, njoshi1@lenovo.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

SGkgVGhvbWFzLAoKVGhhbmsgeW91IGZvciB3b3JraW5nIG9uIHRoaXMhCgpPbiAxMS8xMy8yMSAx
MTo0MiwgVGhvbWFzIFdlacOfc2NodWggd3JvdGU6Cj4gVGhpcyBhZGRzIHN1cHBvcnQgZm9yIHRo
ZSBpbmhpYml0LWNoYXJnZSBjaGFyZ2VfYmVoYXZpb3VyIHRocm91Z2ggdGhlCj4gZW1iZWRkZWQg
Y29udHJvbGxlciBvZiBUaGlua1BhZHMuCj4gCj4gU2lnbmVkLW9mZi1ieTogVGhvbWFzIFdlacOf
c2NodWggPGxpbnV4QHdlaXNzc2NodWgubmV0Pgo+IAo+IC0tLQo+IAo+IFRoaXMgcGF0Y2ggaXMg
YmFzZWQgb24gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvcGxhdGZvcm0tZHJpdmVyLXg4Ni9kMjgw
ODkzMC01ODQwLTZmZmItM2E1OS1kMjM1Y2RiMWZlMTZAZ21haWwuY29tLwo+IC0tLQo+ICBkcml2
ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3BpLmMgfCA1NSArKysrKysrKysrKysrKysrKysr
KysrKysrKystCj4gIDEgZmlsZSBjaGFuZ2VkLCA1MyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3Bp
LmMgYi9kcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3BpLmMKPiBpbmRleCBlOGM5OGU5
YWZmNzEuLjdjZDY0NzUyNDBiMiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BsYXRmb3JtL3g4Ni90
aGlua3BhZF9hY3BpLmMKPiArKysgYi9kcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3Bp
LmMKPiBAQCAtOTMyMSw2ICs5MzIxLDggQEAgc3RhdGljIHN0cnVjdCBpYm1fc3RydWN0IG11dGVf
bGVkX2RyaXZlcl9kYXRhID0gewo+ICAjZGVmaW5lIFNFVF9TVE9QCSJCQ1NTIgo+ICAjZGVmaW5l
IEdFVF9ESVNDSEFSR0UJIkJEU0ciCj4gICNkZWZpbmUgU0VUX0RJU0NIQVJHRQkiQkRTUyIKPiAr
I2RlZmluZSBHRVRfSU5ISUJJVAkiUFNTRyIKPiArI2RlZmluZSBTRVRfSU5ISUJJVAkiQklDUyIK
PiAgCj4gIGVudW0gewo+ICAJQkFUX0FOWSA9IDAsCj4gQEAgLTkzMzgsNiArOTM0MCw3IEBAIGVu
dW0gewo+ICAJVEhSRVNIT0xEX1NUQVJULAo+ICAJVEhSRVNIT0xEX1NUT1AsCj4gIAlGT1JDRV9E
SVNDSEFSR0UsCj4gKwlJTkhJQklUX0NIQVJHRSwKPiAgfTsKPiAgCj4gIHN0cnVjdCB0cGFjcGlf
YmF0dGVyeV9kYXRhIHsKPiBAQCAtOTQwOSw2ICs5NDEyLDEzIEBAIHN0YXRpYyBpbnQgdHBhY3Bp
X2JhdHRlcnlfZ2V0KGludCB3aGF0LCBpbnQgYmF0dGVyeSwgaW50ICpyZXQpCj4gIAkJLyogVGhl
IGZvcmNlIGRpc2NoYXJnZSBzdGF0dXMgaXMgaW4gYml0IDAgKi8KPiAgCQkqcmV0ID0gKnJldCAm
IDB4MDE7Cj4gIAkJcmV0dXJuIDA7Cj4gKwljYXNlIElOSElCSVRfQ0hBUkdFOgo+ICsJCS8qIFRo
aXMgaXMgYWN0dWFsbHkgcmVhZGluZyBwZWFrIHNoaWZ0IHN0YXRlLCBsaWtlIHRwYWNwaS1iYXQg
ZG9lcyAqLwo+ICsJCWlmIEFDUElfRkFJTFVSRSh0cGFjcGlfYmF0dGVyeV9hY3BpX2V2YWwoR0VU
X0lOSElCSVQsIHJldCwgYmF0dGVyeSkpCj4gKwkJCXJldHVybiAtRU5PREVWOwo+ICsJCS8qIFRo
ZSBpbmhpYml0IGNoYXJnZSBzdGF0dXMgaXMgaW4gYml0IDAgKi8KPiArCQkqcmV0ID0gKnJldCAm
IDB4MDE7Cj4gKwkJcmV0dXJuIDA7Cj4gIAlkZWZhdWx0Ogo+ICAJCXByX2NyaXQoIndyb25nIHBh
cmFtZXRlcjogJWQiLCB3aGF0KTsKPiAgCQlyZXR1cm4gLUVJTlZBTDsKPiBAQCAtOTQ0Nyw2ICs5
NDU3LDIyIEBAIHN0YXRpYyBpbnQgdHBhY3BpX2JhdHRlcnlfc2V0KGludCB3aGF0LCBpbnQgYmF0
dGVyeSwgaW50IHZhbHVlKQo+ICAJCQlyZXR1cm4gLUVOT0RFVjsKPiAgCQl9Cj4gIAkJcmV0dXJu
IDA7Cj4gKwljYXNlIElOSElCSVRfQ0hBUkdFOgo+ICsJCS8qIFdoZW4gc2V0dGluZyBpbmhpYml0
IGNoYXJnZSwgd2Ugc2V0IGEgZGVmYXVsdCB2YWx1ZSBvZgo+ICsJCSAqIGFsd2F5cyBicmVha2lu
ZyBvbiBBQyBkZXRhY2ggYW5kIHRoZSBlZmZlY3RpdmUgdGltZSBpcyBzZXQgdG8KPiArCQkgKiBi
ZSBwZXJtYW5lbnQuCj4gKwkJICogVGhlIGJhdHRlcnkgSUQgaXMgaW4gYml0cyA0LTUsIDIgYml0
cywKPiArCQkgKiB0aGUgZWZmZWN0aXZlIHRpbWUgaXMgaW4gYml0cyA4LTIzLCAyIGJ5dGVzLgo+
ICsJCSAqIEEgdGltZSBvZiBGRkZGIGluZGljYXRlcyBmb3JldmVyLgo+ICsJCSAqLwo+ICsJCXBh
cmFtID0gdmFsdWU7Cj4gKwkJcGFyYW0gfD0gYmF0dGVyeSA8PCA0Owo+ICsJCXBhcmFtIHw9IDB4
RkZGRiA8PCA4Owo+ICsJCWlmIChBQ1BJX0ZBSUxVUkUodHBhY3BpX2JhdHRlcnlfYWNwaV9ldmFs
KFNFVF9JTkhJQklULCAmcmV0LCBwYXJhbSkpKSB7Cj4gKwkJCXByX2VycigiZmFpbGVkIHRvIHNl
dCBpbmhpYml0IGNoYXJnZSBvbiAlZCIsIGJhdHRlcnkpOwo+ICsJCQlyZXR1cm4gLUVOT0RFVjsK
PiArCQl9Cj4gKwkJcmV0dXJuIDA7Cj4gIAlkZWZhdWx0Ogo+ICAJCXByX2NyaXQoIndyb25nIHBh
cmFtZXRlcjogJWQiLCB3aGF0KTsKPiAgCQlyZXR1cm4gLUVJTlZBTDsKPiBAQCAtOTQ2Nyw2ICs5
NDkzLDggQEAgc3RhdGljIGludCB0cGFjcGlfYmF0dGVyeV9wcm9iZShpbnQgYmF0dGVyeSkKPiAg
CSAqIDQpIENoZWNrIGZvciBzdXBwb3J0Cj4gIAkgKiA1KSBHZXQgdGhlIGN1cnJlbnQgZm9yY2Ug
ZGlzY2hhcmdlIHN0YXR1cwo+ICAJICogNikgQ2hlY2sgZm9yIHN1cHBvcnQKPiArCSAqIDcpIEdl
dCB0aGUgY3VycmVudCBpbmhpYml0IGNoYXJnZSBzdGF0dXMKPiArCSAqIDgpIENoZWNrIGZvciBz
dXBwb3J0Cj4gIAkgKi8KPiAgCWlmIChhY3BpX2hhc19tZXRob2QoaGtleV9oYW5kbGUsIEdFVF9T
VEFSVCkpIHsKPiAgCQlpZiBBQ1BJX0ZBSUxVUkUodHBhY3BpX2JhdHRlcnlfYWNwaV9ldmFsKEdF
VF9TVEFSVCwgJnJldCwgYmF0dGVyeSkpIHsKPiBAQCAtOTUxMyw2ICs5NTQxLDE2IEBAIHN0YXRp
YyBpbnQgdHBhY3BpX2JhdHRlcnlfcHJvYmUoaW50IGJhdHRlcnkpCj4gIAkJCWJhdHRlcnlfaW5m
by5iYXR0ZXJpZXNbYmF0dGVyeV0uY2hhcmdlX2JlaGF2aW91cnMgfD0KPiAgCQkJCUJJVChQT1dF
Ul9TVVBQTFlfQ0hBUkdFX0JFSEFWSU9VUl9GT1JDRV9ESVNDSEFSR0UpOwo+ICAJfQo+ICsJaWYg
KGFjcGlfaGFzX21ldGhvZChoa2V5X2hhbmRsZSwgR0VUX0lOSElCSVQpKSB7Cj4gKwkJaWYgKEFD
UElfRkFJTFVSRSh0cGFjcGlfYmF0dGVyeV9hY3BpX2V2YWwoR0VUX0lOSElCSVQsICZyZXQsIGJh
dHRlcnkpKSkgewo+ICsJCQlwcl9lcnIoIkVycm9yIHByb2JpbmcgYmF0dGVyeSBpbmhpYml0IGNo
YXJnZTsgJWRcbiIsIGJhdHRlcnkpOwo+ICsJCQlyZXR1cm4gLUVOT0RFVjsKPiArCQl9Cj4gKwkJ
LyogU3VwcG9ydCBpcyBtYXJrZWQgaW4gYml0IDUgKi8KPiArCQlpZiAocmV0ICYgQklUKDUpKQo+
ICsJCQliYXR0ZXJ5X2luZm8uYmF0dGVyaWVzW2JhdHRlcnldLmNoYXJnZV9iZWhhdmlvdXJzIHw9
Cj4gKwkJCQlCSVQoUE9XRVJfU1VQUExZX0NIQVJHRV9CRUhBVklPVVJfSU5ISUJJVF9DSEFSR0Up
Owo+ICsJfQo+ICAKPiAgCWJhdHRlcnlfaW5mby5iYXR0ZXJpZXNbYmF0dGVyeV0uY2hhcmdlX2Jl
aGF2aW91cnMgfD0KPiAgCQlCSVQoUE9XRVJfU1VQUExZX0NIQVJHRV9CRUhBVklPVVJfQVVUTyk7
Cj4gQEAgLTk2NzMsNiArOTcxMSwxMSBAQCBzdGF0aWMgc3NpemVfdCBjaGFyZ2VfYmVoYXZpb3Vy
X3Nob3coc3RydWN0IGRldmljZSAqZGV2LAo+ICAJCQlyZXR1cm4gLUVOT0RFVjsKPiAgCQlpZiAo
cmV0KQo+ICAJCQlhY3RpdmUgPSBQT1dFUl9TVVBQTFlfQ0hBUkdFX0JFSEFWSU9VUl9GT1JDRV9E
SVNDSEFSR0U7Cj4gKwl9IGVsc2UgaWYgKGF2YWlsYWJsZSAmIEJJVChQT1dFUl9TVVBQTFlfQ0hB
UkdFX0JFSEFWSU9VUl9JTkhJQklUX0NIQVJHRSkpIHsKClRoZSB1c2Ugb2YgZWxzZS1pZiBoZXJl
IHNlZW1zIHdyb25nLCB0aGlzIHN1Z2dlc3RzIHRoYXQgYmF0dGVyeXMgY2FuIG5ldmVyCnN1cHBv
cnQgYm90aCBmb3JjZS1kaXNjaGFyZ2UgYW5kIGluaGliaXQtY2hhcmdlIGJlaGF2aW9yLCB3aGlj
aCB0aGV5IGNhbiwgc28gdGhpcwptZWFucyB0aGF0IGFjdGl2ZSBjYW4gbm93IG5ldmVyIGdldCBz
ZXQgdG8gQkVIQVZJT1VSX0lOSElCSVRfQ0hBUkdFIG9uCmJhdHRlcmllcyB3aGljaCBzdXBwb3J0
IGJvdGguCgpTbyBBRkFJQ1QgdGhlIGVsc2UgcGFydCBvZiB0aGUgZWxzZSBpZiBzaG91bGQgYmUg
ZHJvcHBlZCBoZXJlLCBtYWtpbmcgdGhpcwphIG5ldyBzdGFuZCBhbG9uZSBpZiBibG9jay4KCkZv
ciB0aGUgb3RoZXIgcGFydHMgb2YgdGhlIHNldCBsZXRzIHdhaXQgYW5kIHNlZSB3aGF0IFNlYmFz
dGlhbiBoYXMgdG8gc2F5LgoKUmVnYXJkcywKCkhhbnMKCgoKPiArCQlpZiAodHBhY3BpX2JhdHRl
cnlfZ2V0KElOSElCSVRfQ0hBUkdFLCBiYXR0ZXJ5LCAmcmV0KSkKPiArCQkJcmV0dXJuIC1FTk9E
RVY7Cj4gKwkJaWYgKHJldCkKPiArCQkJYWN0aXZlID0gUE9XRVJfU1VQUExZX0NIQVJHRV9CRUhB
VklPVVJfSU5ISUJJVF9DSEFSR0U7Cj4gIAl9Cj4gIAo+ICAJcmV0dXJuIHBvd2VyX3N1cHBseV9j
aGFyZ2VfYmVoYXZpb3VyX3Nob3coZGV2LCBhdmFpbGFibGUsIGFjdGl2ZSwgYnVmKTsKPiBAQCAt
OTcxMCwxMiArOTc1MywyMCBAQCBzdGF0aWMgc3NpemVfdCBjaGFyZ2VfYmVoYXZpb3VyX3N0b3Jl
KHN0cnVjdCBkZXZpY2UgKmRldiwKPiAgCXN3aXRjaCAoc2VsZWN0ZWQpIHsKPiAgCWNhc2UgUE9X
RVJfU1VQUExZX0NIQVJHRV9CRUhBVklPVVJfQVVUTzoKPiAgCQlyZXQgPSB0cGFjcGlfYmF0dGVy
eV9zZXQoRk9SQ0VfRElTQ0hBUkdFLCBiYXR0ZXJ5LCAwKTsKPiAtCQlpZiAocmV0IDwgMCkKPiAr
CQlyZXQgPSB0cGFjcGlfYmF0dGVyeV9zZXQoSU5ISUJJVF9DSEFSR0UsIGJhdHRlcnksIDApIHx8
IHJldDsKPiArCQlpZiAocmV0KQo+ICAJCQlyZXR1cm4gcmV0Owo+ICAJCWJyZWFrOwo+ICAJY2Fz
ZSBQT1dFUl9TVVBQTFlfQ0hBUkdFX0JFSEFWSU9VUl9GT1JDRV9ESVNDSEFSR0U6Cj4gIAkJcmV0
ID0gdHBhY3BpX2JhdHRlcnlfc2V0KEZPUkNFX0RJU0NIQVJHRSwgYmF0dGVyeSwgMSk7Cj4gLQkJ
aWYgKHJldCA8IDApCj4gKwkJcmV0ID0gdHBhY3BpX2JhdHRlcnlfc2V0KElOSElCSVRfQ0hBUkdF
LCBiYXR0ZXJ5LCAwKSB8fCByZXQ7Cj4gKwkJaWYgKHJldCkKPiArCQkJcmV0dXJuIHJldDsKPiAr
CQlicmVhazsKPiArCWNhc2UgUE9XRVJfU1VQUExZX0NIQVJHRV9CRUhBVklPVVJfSU5ISUJJVF9D
SEFSR0U6Cj4gKwkJcmV0ID0gdHBhY3BpX2JhdHRlcnlfc2V0KEZPUkNFX0RJU0NIQVJHRSwgYmF0
dGVyeSwgMCk7Cj4gKwkJcmV0ID0gdHBhY3BpX2JhdHRlcnlfc2V0KElOSElCSVRfQ0hBUkdFLCBi
YXR0ZXJ5LCAxKSB8fCByZXQ7Cj4gKwkJaWYgKHJldCkKPiAgCQkJcmV0dXJuIHJldDsKPiAgCQli
cmVhazsKPiAgCWRlZmF1bHQ6Cj4gCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmlibS1hY3BpLWRldmVsIG1haWxpbmcgbGlzdAppYm0tYWNwaS1kZXZl
bEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlz
dHMvbGlzdGluZm8vaWJtLWFjcGktZGV2ZWwK
