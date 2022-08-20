Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 48AF559A9C6
	for <lists+ibm-acpi-devel@lfdr.de>; Sat, 20 Aug 2022 02:10:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1oPC3d-0006kn-CW;
	Sat, 20 Aug 2022 00:09:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <m.szczepaniak.000@gmail.com>) id 1oPC3c-0006kh-F7
 for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 20 Aug 2022 00:09:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:To:Subject:
 From:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9xKoEPc08h4COujwDE7viLCx9/N696drvRO3ElLGUE4=; b=b00eJAg8be+1tpQ3RiFs5I5ycq
 rnkOs2SeKcGvYiViJ0epv8SV6QZnKtek15Fl1YybtYXeHJn2myTaL9QSJsD36IHHhZLO8C81U4up/
 8AmxiDYtJCHekDYZyRei/oskkRYRH2mIYoY9TkJwlzvTtpduyAhwlraXbw+A/OQucS1E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:To:Subject:From:MIME-Version:Date:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=9xKoEPc08h4COujwDE7viLCx9/N696drvRO3ElLGUE4=; b=e
 P3VdGG6r/p7aXLVLCAfP2v1YPlN3UCrpRNNRbA4NijhGpuTv55pHUZAsi6K+rduHrd4RlPvaj/WoI
 pXKAI7xEaXj+4mU5mSPiAMOvjNPl3cerrwzUTe/fctmMUt5XQk+Aj8sfo78UpwpY3AL29A+BFm23a
 e6TiVNYqNzoortIQ=;
Received: from mail-lf1-f49.google.com ([209.85.167.49])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oPC3Z-009yKy-U5 for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 20 Aug 2022 00:09:44 +0000
Received: by mail-lf1-f49.google.com with SMTP id o2so8053388lfb.1
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Fri, 19 Aug 2022 17:09:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:content-language:to:subject:from
 :user-agent:mime-version:date:message-id:from:to:cc;
 bh=9xKoEPc08h4COujwDE7viLCx9/N696drvRO3ElLGUE4=;
 b=X15REOke2igWUdSkuXQTZP76FjyfmAwaYXO+PCtj6Q/kGV/Rklj6QYXh2XenKdKEet
 bGqhcTa3tSzEkocHxeYuwobmr2VLaevCe4IqWs9mjzkF5flVSxCb7k9KnN2F6kC/AWPX
 lebVeOBZ40CnjOaoMkWNLjAjQsi7CPm+j1x9D5goVadu4yNhIm71rCLt3G+UEavTkuRw
 uxekRkFmNaifKSYBVBGgzcpGBm7Iaz0MvPbQQxQqB5UtbjFVQ4r9WNMfV5fLETSpgOqj
 dggaoFGStgNmMQ0luyZPL+ZkLS5QLEmYajRfJ+PRNRstKfx/g+BKQat6KOQbqRl17Vp2
 QfiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:content-language:to:subject:from
 :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
 :cc; bh=9xKoEPc08h4COujwDE7viLCx9/N696drvRO3ElLGUE4=;
 b=1v+lzCWYQVgLvuPAtKkeolT8LMOoO6EToXN89cvJKemwGA/1gIkCkqUOBY+MpNAjq3
 /6zD+R0BoeUvAc6z6YtdB6vCqDKGvhmtDr47gE9+n7ipwIIn47SEVmOcGgy0YamyqxNB
 cZsigE6q9TVNGQsqXIvecq6eQhyd16Zwd843mTrK7AbcyauiVMvWtQ97LY2FQnZIej5S
 yXTExxpS1mKmhcjyjFuJLfgSAJUGqTcrnVdaZ3QHy8ky1WItn9HVp6npL8xIY8SOsZI8
 pxLOnjqJ5uSxCOrImO5QZTW6zCiWS0iNLVF2lWvk7HMOu0CqzztJYJo14rb3qN/bd6NC
 2rTg==
X-Gm-Message-State: ACgBeo3+Lf63qRxQCWuk6xAT4yaDaRqdCxDmHkZJWfL/1mVuGeXDCNAB
 WtOk7wYr8TfYgIqiMEUMK5H5aCjLYNc=
X-Google-Smtp-Source: AA6agR4RK8k1afAst+z619Fkjww9sLUz/9JOYG9fYkKYZtlGbhFnAGNEzeaFqcxRb7vU/HKmbx+UJA==
X-Received: by 2002:a05:6512:3b82:b0:492:9927:edd5 with SMTP id
 g2-20020a0565123b8200b004929927edd5mr3234141lfv.472.1660954175396; 
 Fri, 19 Aug 2022 17:09:35 -0700 (PDT)
Received: from [192.168.69.3] ([91.189.216.255])
 by smtp.gmail.com with ESMTPSA id
 l10-20020a056512110a00b00492ca820e15sm434972lfg.270.2022.08.19.17.09.34
 for <ibm-acpi-devel@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 19 Aug 2022 17:09:34 -0700 (PDT)
Message-ID: <e513cb80-6820-e948-55d3-3d7a0d9ea2c0@gmail.com>
Date: Sat, 20 Aug 2022 02:09:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
From: =?UTF-8?Q?Micha=c5=82_Szczepaniak?= <m.szczepaniak.000@gmail.com>
To: ibm-acpi-devel@lists.sourceforge.net
Content-Language: en-US
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Thinklight has only two values, on/off so it's reasonable
   for max_brightness to be 0 and 1 as if you write anything between 0 and 255
    it will be 255 anyway so there's no point for it to be 255. ---  drivers/platform/x86/thinkpad_acpi.c
    | 1 +  1 file changed, 1 insertion(+) 
 
 Content analysis details:   (0.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
                             in digit
                             [m.szczepaniak.000[at]gmail.com]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [m.szczepaniak.000[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.167.49 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.167.49 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oPC3Z-009yKy-U5
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

VGhpbmtsaWdodCBoYXMgb25seSB0d28gdmFsdWVzLCBvbi9vZmYgc28gaXQncyByZWFzb25hYmxl
IGZvciAKbWF4X2JyaWdodG5lc3MgdG8gYmUgMCBhbmQgMSBhcyBpZiB5b3Ugd3JpdGUgYW55dGhp
bmcgYmV0d2VlbiAwIGFuZCAyNTUgCml0IHdpbGwgYmUgMjU1IGFueXdheSBzbyB0aGVyZSdzIG5v
IHBvaW50IGZvciBpdCB0byBiZSAyNTUuCgotLS0KIMKgZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhp
bmtwYWRfYWNwaS5jIHwgMSArCiDCoDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5rcGFkX2FjcGkuYyAKYi9kcml2ZXJz
L3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3BpLmMKaW5kZXggMjJkNGU4NjMzZTMwZTkuLjc3NWMy
ZjMyN2RjM2E4IDEwMDY0NAotLS0gYS9kcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3Bp
LmMKKysrIGIvZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhpbmtwYWRfYWNwaS5jCkBAIC01NTYyLDYg
KzU1NjIsNyBAQCBzdGF0aWMgZW51bSBsZWRfYnJpZ2h0bmVzcyBsaWdodF9zeXNmc19nZXQoc3Ry
dWN0IApsZWRfY2xhc3NkZXYgKmxlZF9jZGV2KQogwqBzdGF0aWMgc3RydWN0IHRwYWNwaV9sZWRf
Y2xhc3NkZXYgdHBhY3BpX2xlZF90aGlua2xpZ2h0ID0gewogwqDCoMKgwqAgLmxlZF9jbGFzc2Rl
diA9IHsKIMKgwqDCoMKgIMKgwqDCoCAubmFtZcKgwqDCoCDCoMKgwqAgPSAidHBhY3BpOjp0aGlu
a2xpZ2h0IiwKK8KgwqDCoCDCoMKgwqAgLm1heF9icmlnaHRuZXNzwqDCoMKgID0gMSwKIMKgwqDC
oMKgIMKgwqDCoCAuYnJpZ2h0bmVzc19zZXRfYmxvY2tpbmcgPSAmbGlnaHRfc3lzZnNfc2V0LAog
wqDCoMKgwqAgwqDCoMKgIC5icmlnaHRuZXNzX2dldMKgwqDCoCA9ICZsaWdodF9zeXNmc19nZXQs
CiDCoMKgwqDCoCB9CgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwppYm0tYWNwaS1kZXZlbCBtYWlsaW5nIGxpc3QKaWJtLWFjcGktZGV2ZWxAbGlzdHMu
c291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3Rp
bmZvL2libS1hY3BpLWRldmVsCg==
