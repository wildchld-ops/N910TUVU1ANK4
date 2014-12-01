.class public Lcom/android/mms/util/SmartClipUtils;
.super Ljava/lang/Object;
.source "SmartClipUtils.java"


# static fields
.field public static final PREFIX_COMPOSER:Ljava/lang/String; = "appto://com.android.mms/thread/"

.field public static final PREFIX_LIST:Ljava/lang/String; = "appto://com.android.mms/list"

.field private static final TAG:Ljava/lang/String; = "Mms/SmartClipUtils"


# instance fields
.field private mComposerMetaTag:Ljava/lang/String;

.field private mSmartClip:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/mms/util/SmartClipUtils;->mSmartClip:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;

    return-void
.end method

.method public static getSmsToUri(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smsto:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->replaceUnicodeDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getThreadId(Landroid/content/Intent;)J
    .locals 3

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1

    :cond_0
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    goto :goto_0
.end method

.method public static isComposerIntent(Landroid/content/Intent;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appto://com.android.mms/thread/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isListIntent(Landroid/content/Intent;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appto://com.android.mms/list"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setConversationListTag(Landroid/app/Activity;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/util/SmartClipUtils;->setConversationListTag(Landroid/view/View;)V

    return-void
.end method

.method public static setConversationListTag(Landroid/view/View;)V
    .locals 4

    const-string v0, "Mms/SmartClipUtils"

    const-string v1, "setConversationListTag"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;-><init>(Landroid/view/View;)V

    new-instance v1, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string v2, "app_deep_link"

    const-string v3, "appto://com.android.mms/list"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;->addMetaTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V

    return-void
.end method


# virtual methods
.method public updateComposerTag(Lcom/android/mms/data/Conversation;)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/mms/util/SmartClipUtils;->mSmartClip:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;->clearAllMetaTag()V

    const-string v1, "Mms/SmartClipUtils"

    const-string v2, "clear composer tag"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appto://com.android.mms/thread/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Lcom/android/mms/data/ContactList;->formatNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/util/SmartClipUtils;->mComposerMetaTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/android/mms/util/SmartClipUtils;->mComposerMetaTag:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/util/SmartClipUtils;->mSmartClip:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;->clearAllMetaTag()V

    iget-object v1, p0, Lcom/android/mms/util/SmartClipUtils;->mSmartClip:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;

    new-instance v2, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string v3, "app_deep_link"

    invoke-direct {v2, v3, v0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;->addMetaTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V

    const-string v1, "Mms/SmartClipUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set composer tag,thread/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
