.class final Lcom/android/incallui/cocktail/SecondScreenPanelUtils$1;
.super Ljava/lang/Object;
.source "SecondScreenPanelUtils.java"

# interfaces
.implements Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/cocktail/SecondScreenPanelUtils;->startContactInfoSearch(Landroid/content/Context;Lcom/android/services/telephony/common/CallIdentification;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactInfoComplete(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/CallList;->getCall(I)Lcom/android/services/telephony/common/Call;

    move-result-object v2

    # invokes: Lcom/android/incallui/cocktail/SecondScreenPanelUtils;->getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/services/telephony/common/Call;
    invoke-static {v1}, Lcom/android/incallui/cocktail/SecondScreenPanelUtils;->access$000(Lcom/android/incallui/CallList;)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    const-string v3, "SecondScreenPanelUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", originalCall: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v4

    if-eq v3, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-static {v3, v4, p2}, Lcom/android/incallui/cocktail/SecondScreenPanelUtils;->doUpdate(Landroid/content/Context;Lcom/android/incallui/CallList;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto :goto_0
.end method

.method public onImageLoadComplete(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/CallList;->getCall(I)Lcom/android/services/telephony/common/Call;

    move-result-object v2

    # invokes: Lcom/android/incallui/cocktail/SecondScreenPanelUtils;->getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/services/telephony/common/Call;
    invoke-static {v1}, Lcom/android/incallui/cocktail/SecondScreenPanelUtils;->access$000(Lcom/android/incallui/CallList;)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    const-string v3, "SecondScreenPanelUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", originalCall: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v4

    if-eq v3, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-static {v3, v4, p2}, Lcom/android/incallui/cocktail/SecondScreenPanelUtils;->doUpdate(Landroid/content/Context;Lcom/android/incallui/CallList;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto :goto_0
.end method
