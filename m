Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A9AE23A8CA
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  3 Aug 2020 16:47:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1k2bjo-0004MK-N2; Mon, 03 Aug 2020 14:46:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <elvstone@gmail.com>) id 1k2bjm-0004M3-F6
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 03 Aug 2020 14:46:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Mpr7X2tUqNRV5SACxTjLHt/jsoHBkY8yGCJRt0X0I64=; b=mcRSmMG9NhigCRYxhXNFDvYYbj
 6wrLsulMcQ/S1wkGslwTrGd8RFQ0+4g0Ijw7kz6F6zE586GAYBrUpgROME+WdhQKEY7HWUSK4Lu3Z
 OXJO71xQWT1fIvH/q1eovuwQZsTL7EbEVkTVJx8ifvk6AYZ7gXvwsljBCV/qpw5JMUCw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Mpr7X2tUqNRV5SACxTjLHt/jsoHBkY8yGCJRt0X0I64=; b=LqQb0fHPZDnK9u/n4slfKPtcK/
 qBvv1t8cpMfBdwaIsbJMrc80FfsP8ez1HzraWlWyud1MZZwn8lGn79F/kz2LZccIKaBu5i7HbdLCy
 Q9jB3aS3lyRaXwMcfWEeiSjEVDEZrzvG7OkD95XJtTjw2gucMgQ9bOLfRSBP3MlIwCW0=;
Received: from mail-wr1-f43.google.com ([209.85.221.43])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k2bji-001WTm-HI
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 03 Aug 2020 14:46:50 +0000
Received: by mail-wr1-f43.google.com with SMTP id f7so34506655wrw.1
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 03 Aug 2020 07:46:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Mpr7X2tUqNRV5SACxTjLHt/jsoHBkY8yGCJRt0X0I64=;
 b=FvTWfSG6ddRP+BVCBRO7fbvmea5k+nyymxoyVPStaLOL4//jwMvtCqFX4GcAAwHvLS
 AL3WFs2huN+xgu5lYCPzV37602kHHnO5L6g168YqfjU7+kXUN8XSfxDNONFVLGutkBPz
 rFGMGosbRzk49dyiviHOQwAOjLOW2rvf+mgYbCiIDMlRb21ruhRrbJBVUDgI1TaMS/mc
 TMG+pByuIB8IpWdlSs7dQT1/CYa9bDj9wIvbi4NGI/05iSv+9AjMbrgaHzTRQQ/mq/3Y
 bcZng8z232xvgjOOyHZZvjH9bE9QQv57R/fMMQvEv2co1lgQ3kyoUqKpW0TQHoYNNtXd
 PrQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Mpr7X2tUqNRV5SACxTjLHt/jsoHBkY8yGCJRt0X0I64=;
 b=mYoednU/M71IWaGJ/OXAOzoeD6MOiawtgjBvjhCofMtks1Y2gZyS74W6O1ov1heMDY
 HnxPSCcsJDZYx8VzePaTy1dzf9FBnH8hzR59VBhG8DG0rzNsamM+kfINqwKWd+nW2Vk8
 8BioDcPkBKSUq/a9tPc9Y+htLIJJEQyhK5giPFnqX4+MWPqVg8kRHev7XIkZf9Fu3ucU
 61IZE1H/yOFL0zbLJKxI5rHO5qTtEwCUk6D1cqjKNL7PNTeNs/B53g+PRxj68ZMSbAY7
 tDfNblfKxLGjsUn7q48XhuvNuZatKOuENGSSyPO2YxeLqth/TzmyMdgraS/BM82hHRMA
 w+Pw==
X-Gm-Message-State: AOAM531+soH0cjWEHtyyJuW/P/YM64h3G07Te0euamdhx6s40oirdaTQ
 iCbUJ+nyvz9ophR8eJ+iHfmBqmXVMwjaJqT1SqE=
X-Google-Smtp-Source: ABdhPJwIgroiDmOu8HmwNeQplYTLCpO7T0UTLPmad6F1Yv5MY1n8jmnstTG6D+WvI4uagWLhffCir4PtlgfQj4erevQ=
X-Received: by 2002:adf:9526:: with SMTP id 35mr16404882wrs.326.1596465999869; 
 Mon, 03 Aug 2020 07:46:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAHms=eZm3LY-Z4p+TkfZ+vyxGd_7XKPBsSEM_Mvnx2s-GO2c9w@mail.gmail.com>
 <CAHms=eYpcy__Km_9O4MUtLxpasH1sAgQEmcapOhV79j01twhow@mail.gmail.com>
 <0e462361-a3bc-a7b8-bacd-85f32b575bac@lenovo.com>
In-Reply-To: <0e462361-a3bc-a7b8-bacd-85f32b575bac@lenovo.com>
From: Elvis Stansvik <elvstone@gmail.com>
Date: Mon, 3 Aug 2020 16:46:28 +0200
Message-ID: <CAHms=eZ4YVAvmUsjcZTsPOf15sxK_vELbK6fvCs=Bbm3gxFGeQ@mail.gmail.com>
To: Mark Pearson <markpearson@lenovo.com>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (elvstone[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.43 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.43 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k2bji-001WTm-HI
Subject: Re: [ibm-acpi-devel] [External] Re: [PATCH v5] platform/x86:
 thinkpad_acpi: lap or desk mode interface
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
Cc: Sugumaran <slacshiminar@lenovo.com>, ibm-acpi@hmh.eng.br,
 platform-driver-x86@vger.kernel.org, ibm-acpi-devel@lists.sourceforge.net,
 andy.shevchenko@gmail.com, Nitin Joshi <njoshi1@lenovo.com>,
 Bastien Nocera <bnocera@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

RGVuIG3DpW4gMyBhdWcuIDIwMjAga2wgMTY6Mjcgc2tyZXYgTWFyayBQZWFyc29uIDxtYXJrcGVh
cnNvbkBsZW5vdm8uY29tPjoKPgo+IEhpIEVsdmlzLAo+Cj4gT24gOC8zLzIwMjAgOToyMCBBTSwg
RWx2aXMgU3RhbnN2aWsgd3JvdGU6Cj4gPgo+ID4gRGVuIHPDtm4gMiBhdWcuIDIwMjAga2wgMjM6
MTAgc2tyZXYgRWx2aXMgU3RhbnN2aWsKPiA+IDxlbHZzdG9uZUBnbWFpbC5jb20+Ogo+ID4+Cj4g
Pj4gKEFwb2xvZ2llcyBpbiBhZHZhbmNlIGZvciBtaXNzaW5nIEluLVJlcGx5LVRvIGhlYWRlciBp
biB0aGlzCj4gPj4gcmVwbHkuIEkgc3Vic2NyaWJlZCB0byB0aGUgbGlzdCBqdXN0IG5vdy4pCj4g
Pj4KPiA+PiBEZW4gZnJlIDMganVsaSAyMDIwIGtsIDAxOjI0IHNrcmV2IE1hcmsgUGVhcnNvbgo+
ID4+IDxtYXJrcGVhcnNvbkBsZW5vdm8uY29tPjoKPiA+Pj4gTmV3ZXIgTGVub3ZvIFRoaW5rcGFk
IHBsYXRmb3JtcyBoYXZlIHN1cHBvcnQgdG8gaWRlbnRpZnkgd2hldGhlcgo+ID4+PiB0aGUgc3lz
dGVtIGlzIG9uLWxhcCBvciBub3QgdXNpbmcgYW4gQUNQSSBEWVRDIGV2ZW50IGZyb20gdGhlCj4g
Pj4+IGZpcm13YXJlLgo+ID4+Pgo+ID4+PiBUaGlzIHBhdGNoIHByb3ZpZGVzIHRoZSBhYmlsaXR5
IHRvIHJldHJpZXZlIHRoZSBjdXJyZW50IG1vZGUgdmlhCj4gPj4+IHN5c2ZzIGVudHJ5cG9pbnRz
IGFuZCB3aWxsIGJlIHVzZWQgYnkgdXNlcnNwYWNlIGZvciB0aGVybWFsIG1vZGUKPiA+Pj4gYW5k
IFdXQU4gZnVuY3Rpb25hbGl0eQo+ID4+Cj4gPj4gSSB0cmllZCB0aGUgcGF0Y2ggb3V0IG9uIG15
IFgxQzYgKDIwS0gwMDdCTVgpLCBydW5uaW5nIExlbm92bwo+ID4+IGZpcm13YXJlIHZlcnNpb24g
MC4xLjQ5Lgo+ID4+Cj4gPj4gVGhlIHN5c2ZzIHBhdGggL3N5cy9kZXZpY2VzL3BsYXRmb3JtL3Ro
aW5rcGFkX2FjcGkvZHl0Y19sYXBtb2RlIGlzCj4gPj4gc2hvd2luZyB1cCwgYnV0IGl0J3MgcmVw
b3J0aW5nIDAgcmVnYXJkbGVzcyBpZiB0aGUgbGFwdG9wIGlzIGluIG15Cj4gPj4gbGFwIG9yIG9u
IGEgZGVzay4KPiA+Pgo+ID4+IEkgdGVzdGVkIHRoaXMgYnkgaGF2aW5nIHRoZSBsYXB0b3AgaW4g
bXkgbGFwIGZvciBmaXZlIG1pbnV0ZXMsIGFuZAo+ID4+IHRoZW4gb24gYSBkZXNrIGZvciBmaXZl
IG1pbnV0ZXMuIFRoZSB2YWx1ZSByZXBvcnRlZCB0aHJvdWdoCj4gPj4gL3N5cy9kZXZpY2VzL3Bs
YXRmb3JtL3RoaW5rcGFkX2FjcGkvZHl0Y19sYXBtb2RlIHdhcyBhbHdheXMgMC4KPiA+Pgo+IFRo
YW5rcyBmb3IgdGhlIHVwZGF0ZS4KPiBUaGUgWDFDNiBkb2Vzbid0IGhhdmUgc3VwcG9ydCBmb3Ig
dGhlIG5ldyB0aGVybWFsIG1vZGUgaW1wbGVtZW50YXRpb24gc28KPiBJJ20gd29uZGVyaW5nIGlm
IHRoZSBsYXBtb2RlIGJlaW5nIGF2YWlsYWJsZSBjb3VsZCBiZSByZWxhdGVkIHRvIHRoZQo+IHZl
cnNpb24gb2YgRFlUQyBpcyBhdmFpbGFibGUuIEknbGwgY2hlY2sgd2l0aCB0aGUgZmlybXdhcmUg
dGVhbSBhbmQgZ2V0Cj4gYmFjayB0byB5b3Ugb24gdGhhdCAtIHRoZXkgaGFkbid0IGxpc3RlZCBp
dCB0byBtZSBhcyBhIGxpbWl0YXRpb24KPiBwcmV2aW91c2x5IGFuZCB1bmZvcnR1bmF0ZWx5IEkg
ZG9uJ3QgaGF2ZSBhbiBYMUM2IHNvIGRpZG4ndCB0ZXN0IG9uIHRoYXQKPiBwbGF0Zm9ybS4KPgo+
IEFzIGEgbm90ZSAtIHRoZSBsYXBtb2RlIGlzIHByaW1hcmlseSBmb3IgdGhlIHRoZXJtYWwgbW9k
ZXMgKGl0IGlzIGFsc28KPiBiZWluZyB1c2VkIGZvciBXV0FOIHBvd2VyIGNvbnRyb2wgYnV0IHRo
YXQgaXMgbm90IHN1cHBvcnRlZCBmb3IgTGludXggb24KPiB0aGUgWDFDNiBlaXRoZXIgZm9yIG90
aGVyIHJlYXNvbnMpLiBJJ20gYWZyYWlkIHRoZSBpbnRlcmZhY2UgaXMgb2YKPiBsaW1pdGVkIHVz
ZSB0byB5b3UgYW55d2F5Li4uLgoKVGhhbmtzIE1hcmsuIEkga25vdyB0aGUgWDFDNiBmaXJtd2Fy
ZSBkaWQgbm90IGdldCB0aGUgbmV3IHRoZXJtYWwgbW9kZQppbXBsZW1lbnRhdGlvbiwgYnV0IHRo
b3VnaHQgdGhhdCBJIHdvdWxkIHN0aWxsIGJlIGFibGUgdG8gcXVlcnkgaXRzCmxhcCBtb2RlLgoK
VGhlIHJlYXNvbiBJIHdhbnRlZCBxdWVyeSB0aGUgbGFwIG1vZGUgaXMgYWN0dWFsbHkgYmVjYXVz
ZSBJJ20gdHJ5aW5nCnRvIGhlbHAgTWF0dGhldyBHYXJyZXR0IG91dCBpbiBhZGRpbmcgc3VwcG9y
dCBmb3IgdGhlIGFkYXB0aXZlIERQVEYKcGVyZm9ybWFuY2UgcG9saWN5IG9uIHRoZSB0aGVybWFs
ZCBzaWRlLCBpbnN0ZWFkIG9mIG9uIHRoZSBmaXJtd2FyZQpzaWRlIGxpa2UgTGVub3ZvIGRlY2lk
ZWQgdG8gZG8gZm9yIG1vcmUgcmVjZW50IG1vZGVscy4gU2VlIHRoYXQgZWZmb3J0CmhlcmUgaHR0
cHM6Ly9naXRodWIuY29tL21qZzU5L3RoZXJtYWxfZGFlbW9uL2lzc3Vlcy83KS4gV2Ugd2VyZQpz
dXJwcmlzZWQgdG8gZmluZCB0aGF0IGFsbCBvZiB0aGUgT0VNIGNvbmRpdGlvbnMgaW4gdGhlIEFQ
Q1QgdGFibGUKcmVtYWluZWQgdW5jaGFuZ2VkIHdoZW4gdGhlIGxhcHRvcCB3YXMgdGFrZW4gYmV0
d2VlbiBsYXAgYW5kIGRlc2suIFNvCkkgc3RhcnRlZCBzdXNwZWN0aW5nIHRoYXQgcGVyaGFwcyB0
aGUgWDFDNiBhbmQgaXRzIGZpcm13YXJlIHNpbXBseQpkb2VzIG5vdCBoYXZlIHRoZSBhYmlsaXR5
IHRvIGRldGVjdCBsYXAgdnMgZGVzay4gVGhhdCdzIHdoeSBJIHdhbnRlZAp0byB1c2UgdGhpcyBw
YXRjaCB0byBxdWVyeSB0aGUgbGFwIG1vZGUsIGFzIGEgZGVidWdnaW5nIGFpZC4KCklmIFgxQzYg
ZG9lcyBub3QgaGF2ZSB0aGUgYWJpbGl0eSB0byBkZXRlY3QgbGFwIG1vZGUsIHRoZW4gdGhhdCB3
b3VsZApvYnZpb3VzbHkgZXhwbGFpbiB3aHkgdGhlIGZpcm13YXJlIGRvZXMgbm90IGNoYW5nZSBh
bnkgQVBDVCBjb25kaXRpb24Kd2hlbiBwdXQgb24vb2ZmIGxhcCwgYW5kIGFueSBlZmZvcnQgdG8g
Z2V0IGFkYXB0aXZlIHBlcmZvcm1hbmNlIHBvbGljeQp3b3JraW5nIG9uIHRoZSB0aGVybWFsZCBz
aWRlIGlzIHByb2JhYmx5IGRvb21lZCA6KAoKRWx2aXMKCj4KPiBNYXJrCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KaWJtLWFjcGktZGV2ZWwgbWFpbGlu
ZyBsaXN0CmlibS1hY3BpLWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3Rz
LnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9pYm0tYWNwaS1kZXZlbAo=
