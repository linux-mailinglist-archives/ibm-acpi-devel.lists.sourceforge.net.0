Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E19745F86BE
	for <lists+ibm-acpi-devel@lfdr.de>; Sat,  8 Oct 2022 20:51:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1ohEts-00055y-JS;
	Sat, 08 Oct 2022 18:50:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <m.szczepaniak.000@gmail.com>) id 1ohEtl-00055n-VM
 for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 08 Oct 2022 18:50:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:From:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5epQj47sHxL0xV+W70y4hEnecmE3ASdEET21W4Q2Zpc=; b=WMrQMIxngVfcS09vC1RX0DZgbk
 JdRv4TmppcO/hu8J8VX8YQKy/pPwsh8Od5q4E8wX+/nfMkh2zyFJQxlS7U8uQC1O3ExvsDJesMBxE
 Gl7jGcj6WTJ4dO+kZyCFm5wnz9cUGiHZq+h8QA8FIZ5JMUba5KWyMfNkHL4LO0dkEJ9k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:From:MIME-Version:
 Date:Message-ID:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=5epQj47sHxL0xV+W70y4hEnecmE3ASdEET21W4Q2Zpc=; b=P
 jV7EhGFQzXOIrpkdFIZtjm1R3J2ynCoMTYWY7yYAiV21W4E4YlmhrfpFNVQWUVJW0EIjBUQSYRizy
 WFq41xtUs8hyPRoW+UiIdlyJJAxDN8ZS81lMkTsWBHGUxt8O++j+7cusU908zTQs+2Qvg1JRK3LmI
 jWgJipY+P2m4SI5M=;
Received: from mail-ed1-f53.google.com ([209.85.208.53])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ohEtg-0004AW-Lx for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 08 Oct 2022 18:50:09 +0000
Received: by mail-ed1-f53.google.com with SMTP id s30so11033758eds.1
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Sat, 08 Oct 2022 11:50:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:cc:content-language:to:subject:from
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=5epQj47sHxL0xV+W70y4hEnecmE3ASdEET21W4Q2Zpc=;
 b=q5Qlszmq+NigroZa/5gj3lQ6ENOcmbC1YJmfx51NkGfnXhPZ0kCIWeQzs2rotc2qPA
 BRxZWTuiZ6aNegwQ1MEdQzTS0trY6D0DPtxon2KQoQCm/yaarFswmXJud/YnvaJZoR9C
 2q0lmdLpCmPMXx5iYUYLNnYCBqN7eNAqoqNgf8iyO/EZUT6mpg/zpOJfoC+K6UZDgI9t
 w0CJJJNSYz4DPaLFkQfZBINTUijHvBHOpOHHwIYoGg/BC2uJrFmyjvwMYBAqM4+GmT+e
 QPAY6N8z2HA7r6QmSAbGKJpTCJPH4EfnF87QPBu6FvPbddL3qrWG73Qcsjvvj5Q6RCbj
 bGMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:content-language:to:subject:from
 :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=5epQj47sHxL0xV+W70y4hEnecmE3ASdEET21W4Q2Zpc=;
 b=bW/74Yt0Iw0QptyJfAK21K6Hxl7D9a2FlMqm/OTiEFH1o49JWau7C8C/ZrO3Yd3wkG
 wkcfsE/SJvsEHQeJTdrK4VEVfcT4l5eoWm2qxyBTHtZr74jugLThw/wsya9QF7H23Ae9
 Jvqk5Bjg9TfiyFH8pQIZIT3Lx/rPcg0uoH6KqRsjKE1YEqgVTYRzra70ZihrCQ797GM9
 wCb466mfHVGKxAFTDurhTFInjXqJhJ6AMspe9UVNfCfvZXGfh58gXLsihfnZQOFvJaC2
 M6LElmoPMXVZ6SRcjwwR6W39XJ7sL4G3dagHjyldyZea+IJgxbZRfCnQxnl7V6R3V+pT
 lMmA==
X-Gm-Message-State: ACrzQf0muLac76YF47orbrQ0uEjOs5wjj2EAw4nlx4pnwC8hHRXwhmEg
 eZIaE9olebO8IUWci0sk8nu5sH1LXaA3SA==
X-Google-Smtp-Source: AMsMyM5QspheXEsi8coPHqCc+GmRkjb2wXwJ2c8UGKv8BJBScIT03+3DkuddaievAUoYA6i5LL6idw==
X-Received: by 2002:a05:6402:c81:b0:458:c428:173a with SMTP id
 cm1-20020a0564020c8100b00458c428173amr10087195edb.298.1665254998203; 
 Sat, 08 Oct 2022 11:49:58 -0700 (PDT)
Received: from [192.168.69.3] ([91.189.216.255])
 by smtp.gmail.com with ESMTPSA id
 fp33-20020a1709069e2100b00730979f568fsm3022530ejc.150.2022.10.08.11.49.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 08 Oct 2022 11:49:57 -0700 (PDT)
Message-ID: <55400326-e64f-5444-94e5-22b8214d00b6@gmail.com>
Date: Sat, 8 Oct 2022 20:49:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
From: =?UTF-8?Q?Micha=c5=82_Szczepaniak?= <m.szczepaniak.000@gmail.com>
To: ibm-acpi-devel@lists.sourceforge.net
Content-Language: en-US
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Thinklight has only two values, on/off so it's reasonable
 for max_brightness to be 0 and 1 as if you write anything between 0 and 255
 it will be 255 anyway so there's no point for it to be 255. Also sorry for
 repeated messages, I got no reply so I'm trying to figure out what I did
 wrong. Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.53 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [m.szczepaniak.000[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [m.szczepaniak.000[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.53 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1ohEtg-0004AW-Lx
Subject: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: Fix a
 max_brightness of thinklight
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
Cc: hmh@hmh.eng.br, platform-driver-x86@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

VGhpbmtsaWdodCBoYXMgb25seSB0d28gdmFsdWVzLCBvbi9vZmYgc28gaXQncyByZWFzb25hYmxl
IGZvciAKbWF4X2JyaWdodG5lc3MgdG8gYmUgMCBhbmQgMSBhcyBpZiB5b3Ugd3JpdGUgYW55dGhp
bmcgYmV0d2VlbiAwIGFuZCAyNTUgCml0IHdpbGwgYmUgMjU1IGFueXdheSBzbyB0aGVyZSdzIG5v
IHBvaW50IGZvciBpdCB0byBiZSAyNTUuCgpBbHNvIHNvcnJ5IGZvciByZXBlYXRlZCBtZXNzYWdl
cywgSSBnb3Qgbm8gcmVwbHkgc28gSSdtIHRyeWluZyB0byBmaWd1cmUgCm91dCB3aGF0IEkgZGlk
IHdyb25nLgoKCi0tLQogwqBkcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3BpLmMgfCAx
ICsKIMKgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9wbGF0Zm9ybS94ODYvdGhpbmtwYWRfYWNwaS5jIApiL2RyaXZlcnMvcGxhdGZvcm0veDg2L3Ro
aW5rcGFkX2FjcGkuYwppbmRleCAyMmQ0ZTg2MzNlMzBlOS4uNzc1YzJmMzI3ZGMzYTggMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5rcGFkX2FjcGkuYworKysgYi9kcml2ZXJz
L3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3BpLmMKQEAgLTU1NjIsNiArNTU2Miw3IEBAIHN0YXRp
YyBlbnVtIGxlZF9icmlnaHRuZXNzIGxpZ2h0X3N5c2ZzX2dldChzdHJ1Y3QgCmxlZF9jbGFzc2Rl
diAqbGVkX2NkZXYpCiDCoHN0YXRpYyBzdHJ1Y3QgdHBhY3BpX2xlZF9jbGFzc2RldiB0cGFjcGlf
bGVkX3RoaW5rbGlnaHQgPSB7CiDCoMKgwqDCoCAubGVkX2NsYXNzZGV2ID0gewogwqDCoMKgwqAg
wqDCoMKgIC5uYW1lwqDCoMKgIMKgwqDCoCA9ICJ0cGFjcGk6OnRoaW5rbGlnaHQiLAorwqDCoMKg
IMKgwqDCoCAubWF4X2JyaWdodG5lc3PCoMKgwqAgPSAxLAogwqDCoMKgwqAgwqDCoMKgIC5icmln
aHRuZXNzX3NldF9ibG9ja2luZyA9ICZsaWdodF9zeXNmc19zZXQsCiDCoMKgwqDCoCDCoMKgwqAg
LmJyaWdodG5lc3NfZ2V0wqDCoMKgID0gJmxpZ2h0X3N5c2ZzX2dldCwKIMKgwqDCoMKgIH0KCgoK
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KaWJtLWFj
cGktZGV2ZWwgbWFpbGluZyBsaXN0CmlibS1hY3BpLWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5l
dApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9pYm0tYWNwaS1k
ZXZlbAo=
