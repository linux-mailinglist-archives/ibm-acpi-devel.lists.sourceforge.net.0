Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B43498A5C35
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 15 Apr 2024 22:28:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rwSvP-0007ie-NC;
	Mon, 15 Apr 2024 20:27:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1rwSvN-0007iU-D6
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 15 Apr 2024 20:27:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xtZFpnMgm/+Xn/twFBJ7lG1+0rbINzM3+6AgqkcVRW8=; b=BwnE5T/KUtTcbjOel/KX3AF8gW
 ti8f/1cQ4kCQABTMxPRbsRzWzwu/sQhxZbo6zEaFKFkfsjlvdvSn+TuGu8o5zLMSQWuR5m/eRH3/R
 KGqIX+tM3bOXC8RysHq9IZhjbKureTLcEtyNlXrU1hz9/RyAy1LcFIwi0San/3ONi+Gg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xtZFpnMgm/+Xn/twFBJ7lG1+0rbINzM3+6AgqkcVRW8=; b=WJ+cmJH8MlkCe7ZGh4gPf4fXNi
 C1PCDG/mcXU4Tw2LUYqPUht3oi6wc0VQzJeN2V1kZMZgMQSa9DddEbbplpBTnH0DLVwSlLdPNv+F9
 kBb+mluPHuTJURE0mqftwv67YTysBRfNPAA5CZ4IA9PogU57zNIFFRhPypxTK06ebqQc=;
Received: from fhigh4-smtp.messagingengine.com ([103.168.172.155])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rwSvM-0005j7-MF for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 15 Apr 2024 20:27:33 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id C73CB1140156;
 Mon, 15 Apr 2024 16:27:26 -0400 (EDT)
Received: from imap52 ([10.202.2.102])
 by compute3.internal (MEProxy); Mon, 15 Apr 2024 16:27:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to; s=fm3; t=1713212846; x=1713299246; bh=xtZFpnMgm/
 +Xn/twFBJ7lG1+0rbINzM3+6AgqkcVRW8=; b=kHByMwUCnvXsVc4H9aV+eZa1Ya
 ZnkFc+5D9nWj/towPp62QKd8LURtw9QaamDTvbAG0SzFTXTfft2I9iw9jscCvYQ0
 mDYB/RWe4UW03Y/ZjdsdVGw6pCw6d3KxNONnVp/cnWP2nwmSQZ+Ec5ErLzjYNrPw
 FAwUqiABu6uYJ7LEHHJnZJfLuIKSUDWHGLyFxgHzoeIvwBvhTAouete00ZEGJUWS
 kd0axSVUGoeFN74hKCQQI1+XqNsaCVXkZ199EiCK9ZSNcvMSoqD4WcMLCNrE7kJg
 zSwPT8msXuFWdZza0lJTW7rE9rEZtVpwBycasFfcHCBPQzHshTNCxcV9Ocnw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1713212846; x=1713299246; bh=xtZFpnMgm/+Xn/twFBJ7lG1+0rbI
 NzM3+6AgqkcVRW8=; b=IueU6UZASUdsTNtGwH+tg9mj1KLB5fZkZSsaWXS/ZpjQ
 WC+wfN6frmzynTJH6njRVXy8sGIpywFeUr20kFcIZOkTCgdt+2x3mckP2mQlHh4A
 kIizTWDqZAPXwfBoeeGgASRK04pr3tBT4W/W1EGMO54kI1KcJ4vwj4ExH23LkhBW
 4ZFr11GUd48sBmx5zHKZOQj5HERXFwhl8TnRm61qKjGYLXsczgG3iV0KLnpH2jwP
 VtxVmr3yH69wlevHfZKmhOwn/tYd2b4dJLUxr9A1NgScfH+z4hz4jcwa0Vv3D5Z7
 MBK2eFEDYz5nBHU9NFcTNf/MXtmdmXd+2OJatn9nuw==
X-ME-Sender: <xms:ro0dZoLMGkef_9U5jovO-jhSP5rD8Fx0MV-LXgqoI3PC-zRhQUte9g>
 <xme:ro0dZoL78-Ubzj7B8QouBUdEqiEQ20sUUTJNM-O6_AiZ7GVyT_AN1C8fUnOrSWtNE
 Nr0NPOba2HSYs9Bzac>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudejvddgudehtdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefofgggkfgjfhffhffvvefutgesthdtredtreertdenucfhrhhomhepfdfo
 rghrkhcurfgvrghrshhonhdfuceomhhpvggrrhhsohhnqdhlvghnohhvohesshhquhgvsg
 gsrdgtrgeqnecuggftrfgrthhtvghrnhepieeufeejieevteduvdekteefledtveffvedu
 hefffeejudefvdeijeegudegkefhnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrg
 hmpehmrghilhhfrhhomhepmhhpvggrrhhsohhnqdhlvghnohhvohesshhquhgvsggsrdgt
 rg
X-ME-Proxy: <xmx:ro0dZos6Eaz2z3-vzm9ZfZmz3Gtpx5hXWd4dqvSzJJOi2s5iXZf75Q>
 <xmx:ro0dZlY79oTHJE--S-v2JJvciO8HZCC53GejgZ4mWL7swt4bPii_PQ>
 <xmx:ro0dZvZLsllcnISD4rYL65NcHgfSJoA46v9Z4TLt1R48L9eYaJEKsQ>
 <xmx:ro0dZhD41zxCFb-Z6lStzI3xnGS3o9mOiIJJAIH6Ie6kaPCtqi3kLg>
 <xmx:ro0dZsTHu2ZNxKOKM-LKqwnhJUr35gkrRtv0bg_0SkyvTNB-QblqdRbG>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 3D426C60097; Mon, 15 Apr 2024 16:27:26 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.11.0-alpha0-379-gabd37849b7-fm-20240408.001-gabd37849
MIME-Version: 1.0
Message-Id: <539776c5-6243-464b-99ae-5b1b1fb40e4b@app.fastmail.com>
In-Reply-To: <Zh2G85df29tPP6OK@google.com>
References: <20240324210817.192033-2-mpearson-lenovo@squebb.ca>
 <ZhR-WPx7dgKxziMb@google.com>
 <f3342c0b-fb31-4323-aede-7fb02192cf44@redhat.com>
 <ZhW3Wbn4YSGFBgfS@google.com> <ZhXpZe1Gm5e4xP6r@google.com>
 <92ee5cb2-565e-413c-b968-81393a9211c4@app.fastmail.com>
 <ZhcogDESvZmUPEEf@google.com>
 <91593303-4a6a-49c9-87a0-bb6f72f512a1@app.fastmail.com>
 <Zh2CtKy1NfKfojzS@google.com>
 <484638e2-1565-454b-97f8-4fcc6514a69c@redhat.com>
 <Zh2G85df29tPP6OK@google.com>
Date: Mon, 15 Apr 2024 16:28:19 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Dmitry Torokhov" <dmitry.torokhov@gmail.com>,
 "Hans de Goede" <hdegoede@redhat.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi On Mon, Apr 15, 2024, at 3:58 PM, Dmitry Torokhov wrote:
 > On Mon, Apr 15, 2024 at 09:50:37PM +0200, Hans de Goede wrote: >> Hi, >>
 >> On 4/15/24 9:40 PM, Dmitry Torokhov wrote: >> > On Wed, Apr 10, 2 [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: squebb.ca]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [103.168.172.155 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1rwSvM-0005j7-MF
Subject: Re: [ibm-acpi-devel] [PATCH 1/4] Input: Add trackpoint doubletap
 and system debug info keycodes
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
Cc: linux-kernel@vger.kernel.org, "platform-driver-x86@vger.kernel.org"
 <platform-driver-x86@vger.kernel.org>, Vishnu Sankar <vsankar@lenovo.com>,
 ibm-acpi-devel@lists.sourceforge.net,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>, linux-input@vger.kernel.org,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Peter Hutterer <peter.hutterer@redhat.com>, Nitin Joshi1 <njoshi1@lenovo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi

On Mon, Apr 15, 2024, at 3:58 PM, Dmitry Torokhov wrote:
> On Mon, Apr 15, 2024 at 09:50:37PM +0200, Hans de Goede wrote:
>> Hi,
>> 
>> On 4/15/24 9:40 PM, Dmitry Torokhov wrote:
>> > On Wed, Apr 10, 2024 at 10:48:10PM -0400, Mark Pearson wrote:
>> >>
>> >> I have a stronger preference to keep the KEY_DOUBLECLICK - that one seems less controversial as a genuine new input event.
>> > 
>> > Please see my response to Peter's letter. I think it very much depends
>> > on how it will be used (associated with the pointer or standalone as it
>> > is now).
>> > 
>> > For standalone application, recalling your statement that on Win you
>> > have this gesture invoke configuration utility I would argue for
>> > KEY_CONFIG for it.
>> 
>> KEY_CONFIG is already generated by Fn + F# on some ThinkPads to launch
>> the GNOME/KDE control center/panel and I believe that at least GNOME
>> comes with a default binding to map KEY_CONFIG to the control-center.
>
> Not KEY_CONTROLPANEL?
>
> Are there devices that use both Fn+# and the doubleclick? Would it be an
> acceptable behavior for the users to have them behave the same?
>
Catching up with the thread, thanks for all the comments.

For FN+N (originally KEY_DEBUG_SYS_INFO) the proposal was to now use KEY_VENDOR there. My conclusion was that this is targeting vendor specific functionality, and that was the closest fit, if a new keycode was not preferred.

For the doubletap (which is a unique input event - not related to the pointer) I would like to keep it as a new unique event. 

I think it's most likely use would be for control panel, but I don't think it should be limited to that. I can see it being useful if users are able to reconfigure it to launch something different (browser or music player maybe?), hence it would be best if it did not conflict with an existing keycode function. I also can't confirm it doesn't clash on existing or future systems - it's possible.

FWIW - I wouldn't be surprised with some of the new gaming systems we're seeing (Steamdeck, Legion-Go, etc), that a doubletap event on a joystick might be useful to have, if the HW supports it?

Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
