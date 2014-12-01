.class public Lcom/android/mms/spam/SpamFilter$SpamFilterCache;
.super Ljava/lang/Object;
.source "SpamFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/spam/SpamFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpamFilterCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/spam/SpamFilter$SpamFilterCache$Entry;
    }
.end annotation


# static fields
.field private static final mDisableDump:Z = true

.field private static sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;


# instance fields
.field private final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/mms/spam/SpamFilter$SpamFilterData;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static changeCheckStatus(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    return v4

    :cond_0
    const-string v4, "Mms/SpamFilter"

    const-string v7, "changeCheckStatus"

    invoke-static {v4, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v4, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v4, v4, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v4, v4, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-eqz v4, :cond_3

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mType:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$300(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v4

    if-ne v4, p1, :cond_1

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mCriteria:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$200(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v4

    if-nez v4, :cond_1

    if-eqz p2, :cond_1

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p2}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, " "

    const-string v7, ""

    invoke-virtual {p2, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v4, "-"

    const-string v7, ""

    invoke-virtual {p2, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    :cond_2
    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$000(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    invoke-static {p0, v4, v3}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->updateSpamNumber(Landroid/content/Context;ZI)V

    const-string v4, "Mms/SpamFilter"

    const-string v7, "checkEnableStatus return true"

    invoke-static {v4, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v6

    goto/16 :goto_0

    :cond_3
    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mType:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$300(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v4

    if-ne v4, p1, :cond_1

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mCriteria:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$200(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v4

    if-nez v4, :cond_1

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$000(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    invoke-static {p0, v4, v3}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->updateSpamNumber(Landroid/content/Context;ZI)V

    const-string v4, "Mms/SpamFilter"

    const-string v7, "checkEnableStatus return true"

    invoke-static {v4, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v6

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v4, "Mms/SpamFilter"

    const-string v6, "NullPointerException in checkAlreadyInUse()"

    invoke-static {v4, v6}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    goto/16 :goto_0

    :cond_4
    const-string v4, "Mms/SpamFilter"

    const-string v6, "changeCheckStatus return false"

    invoke-static {v4, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    goto/16 :goto_0
.end method

.method public static checkAlreadyEnabledandUsed(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    return v4

    :cond_0
    :try_start_0
    sget-object v4, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v4, v4, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v4, v4, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-eqz v4, :cond_3

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mType:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$300(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v4

    if-ne v4, p1, :cond_1

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$000(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Z

    move-result v4

    if-eqz v4, :cond_1

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mCriteria:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$200(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v4

    if-nez v4, :cond_1

    if-eqz p2, :cond_1

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p2}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, " "

    const-string v7, ""

    invoke-virtual {p2, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v4, "-"

    const-string v7, ""

    invoke-virtual {p2, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    :cond_2
    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v6

    goto :goto_0

    :cond_3
    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mType:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$300(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v4

    if-ne v4, p1, :cond_1

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$000(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Z

    move-result v4

    if-eqz v4, :cond_1

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mCriteria:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$200(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v4

    if-nez v4, :cond_1

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    move v4, v6

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v4, "Mms/SpamFilter"

    const-string v6, "NullPointerException in checkAlreadyInUse()"

    invoke-static {v4, v6}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    goto/16 :goto_0

    :cond_4
    move v4, v5

    goto/16 :goto_0
.end method

.method public static checkAlreadyInUse(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    return v4

    :cond_0
    :try_start_0
    sget-object v4, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v4, v4, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v4, v4, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-eqz v4, :cond_3

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mType:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$300(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v4

    if-ne v4, p1, :cond_1

    if-eqz p2, :cond_1

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p2}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, " "

    const-string v7, ""

    invoke-virtual {p2, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v4, "-"

    const-string v7, ""

    invoke-virtual {p2, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    :cond_2
    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "Mms/SpamFilter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "*** checkAlreadyInUse filter:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "data.mFilter"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v6

    goto/16 :goto_0

    :cond_3
    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mType:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$300(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v4

    if-ne v4, p1, :cond_1

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mCriteria:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$200(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v4

    if-ne v4, v6, :cond_4

    if-eqz p2, :cond_4

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    move v4, v5

    goto/16 :goto_0

    :cond_4
    move v4, v6

    goto/16 :goto_0

    :cond_5
    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mType:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$300(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v4

    if-ne v4, p1, :cond_1

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mCriteria:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$200(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v4

    if-nez v4, :cond_1

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    move v4, v6

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v4, "Mms/SpamFilter"

    const-string v6, "NullPointerException in checkAlreadyInUse()"

    invoke-static {v4, v6}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    goto/16 :goto_0

    :cond_6
    move v4, v5

    goto/16 :goto_0
.end method

.method public static checkEnableStatus(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    return v4

    :cond_0
    const-string v4, "Mms/SpamFilter"

    const-string v7, "checkEnableStatus"

    invoke-static {v4, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v4, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v4, v4, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v4, v4, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-eqz v4, :cond_3

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mType:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$300(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v4

    if-ne v4, p1, :cond_1

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mCriteria:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$200(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v4

    if-nez v4, :cond_1

    if-eqz p2, :cond_1

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p2}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, " "

    const-string v7, ""

    invoke-virtual {p2, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v4, "-"

    const-string v7, ""

    invoke-virtual {p2, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    :cond_2
    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$000(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    invoke-static {p0, v4, v3}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->updateSpamNumber(Landroid/content/Context;ZI)V

    const-string v4, "Mms/SpamFilter"

    const-string v7, "checkEnableStatus return true"

    invoke-static {v4, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v6

    goto/16 :goto_0

    :cond_3
    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mType:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$300(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v4

    if-ne v4, p1, :cond_1

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mCriteria:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$200(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v4

    if-nez v4, :cond_1

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$000(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    invoke-static {p0, v4, v3}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->updateSpamNumber(Landroid/content/Context;ZI)V

    const-string v4, "Mms/SpamFilter"

    const-string v7, "checkEnableStatus return true"

    invoke-static {v4, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v6

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v4, "Mms/SpamFilter"

    const-string v6, "NullPointerException in checkAlreadyInUse()"

    invoke-static {v4, v6}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    goto/16 :goto_0

    :cond_4
    const-string v4, "Mms/SpamFilter"

    const-string v6, "checkEnableStatus return false"

    invoke-static {v4, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    goto/16 :goto_0
.end method

.method public static clear()V
    .locals 2

    const-string v0, "Mms/SpamFilter"

    const-string v1, "SpamFilter clear"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v0, v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static delete(I)V
    .locals 2

    sget-object v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v0, v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v0, v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->dump()V

    return-void
.end method

.method public static delete(ILjava/lang/String;)V
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v3, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v3, v3, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v3, v3, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v3

    if-eqz v3, :cond_4

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mType:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$300(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v3

    if-ne v3, p0, :cond_2

    if-eqz p1, :cond_2

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v3, v3, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mType:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$300(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v3

    if-ne v3, p0, :cond_2

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v3, v3, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public static dump()V
    .locals 0

    return-void
.end method

.method public static fill()V
    .locals 13

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    const-string v10, "Mms/SpamFilter"

    const-string v11, "SpamFilter fill() begin"

    invoke-static {v10, v11}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v10, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v0, v10, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_0

    const-string v8, "Mms/SpamFilter"

    const-string v9, "null Cursor in fill()"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v10, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v11, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v11, v11, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    :cond_1
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x0

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v11, 0x1

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v11, 0x2

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-eqz v11, :cond_2

    move v4, v8

    :goto_2
    const/4 v11, 0x3

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x4

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v4, :cond_1

    new-instance v1, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;-><init>(IIZLjava/lang/String;I)V

    sget-object v11, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v11, v11, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v8

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v8

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v8

    :cond_2
    move v4, v9

    goto :goto_2

    :cond_3
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    invoke-static {}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->dump()V

    const-string v8, "Mms/SpamFilter"

    const-string v9, "SpamFilter fill() finished"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static fillIfCountChanged()V
    .locals 14

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    const-string v11, "Mms/SpamFilter"

    const-string v12, "SpamFilter fillIfCountChanged() begin"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v11, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v0, v11, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_0

    const-string v9, "Mms/SpamFilter"

    const-string v10, "null Cursor in fill()"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception v8

    const-string v9, "Mms/SpamFilter"

    const-string v10, "sInstance is null in fillIfCountChanged()"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz v7, :cond_5

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v11

    sget-object v12, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v12, v12, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    if-ne v11, v12, :cond_1

    const-string v9, "Mms/SpamFilter"

    const-string v10, "count of db and cache is same. Skip refreshing cache !"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    :try_start_2
    sget-object v11, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    monitor-enter v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    sget-object v12, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v12, v12, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->clear()V

    :cond_2
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v12, 0x0

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v12, 0x1

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v12, 0x2

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-eqz v12, :cond_3

    move v4, v9

    :goto_2
    const/4 v12, 0x3

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x4

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v4, :cond_2

    new-instance v1, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;-><init>(IIZLjava/lang/String;I)V

    sget-object v12, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v12, v12, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v9

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v9

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v9

    :cond_3
    move v4, v10

    goto :goto_2

    :cond_4
    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    const-string v9, "Mms/SpamFilter"

    const-string v10, "SpamFilter fillIfCountChanged() finished"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->dump()V

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/mms/spam/SpamFilter$SpamFilterCache;
    .locals 1

    sget-object v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    invoke-direct {v0, p0}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache$1;

    invoke-direct {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static insert(ILcom/android/mms/spam/SpamFilter$SpamFilterData;)V
    .locals 2

    sget-object v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v0, v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->dump()V

    return-void
.end method

.method public static isSpam(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Z
    .locals 10

    const/4 v7, 0x0

    invoke-static {p0}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isSpamOptionOn(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    move v6, v7

    :goto_0
    return v6

    :cond_0
    const/4 v5, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v6, v7

    goto :goto_0

    :cond_2
    :try_start_0
    sget-object v8, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v6, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v6, v6, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v6, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v6, v6, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mType:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$300(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v6

    if-eqz v6, :cond_3

    if-nez v2, :cond_3

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$000(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v5, :cond_3

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "Mms/SpamFilter"

    const-string v9, "filtered by string"

    invoke-static {v6, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    const-string v6, "Mms/SpamFilter"

    const-string v8, "NullPointerExcetpion occurred. isSpam(context, encText)"

    invoke-static {v6, v8}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v6, v7

    goto :goto_0

    :cond_4
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public static isSpam(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;Lcom/google/android/mms/pdu/EncodedStringValue;)Z
    .locals 3

    invoke-static {p0}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isSpamOptionOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const/4 v1, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-static {p0, v0, v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isSpam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method public static isSpam(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)Z
    .locals 14

    invoke-static {p0}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isSpamOptionOn(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_0

    const/4 v11, 0x0

    :goto_0
    return v11

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "messageblock_mode"

    const/4 v13, 0x2

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v11, 0x0

    goto :goto_0

    :cond_1
    const/4 v11, 0x1

    if-ne v0, v11, :cond_2

    const/4 v11, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/GenericPdu;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/GenericPdu;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v6

    :cond_3
    invoke-static {p0, v6}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isUnknownSender(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v11, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    instance-of v11, p1, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    if-eqz v11, :cond_8

    check-cast p1, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    if-nez v1, :cond_5

    const/4 v11, 0x0

    goto :goto_0

    :cond_5
    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v8

    const/4 v5, 0x0

    move-object v10, v9

    :goto_1
    if-ge v5, v8, :cond_8

    invoke-virtual {v1, v5}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v7

    :try_start_0
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v11

    if-eqz v11, :cond_9

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v3

    const-string v11, "text/plain"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    if-nez v3, :cond_7

    move-object v9, v10

    :cond_6
    :goto_2
    add-int/lit8 v5, v5, 0x1

    move-object v10, v9

    goto :goto_1

    :cond_7
    new-instance v9, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v9, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p0, v9}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isSpam(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    if-eqz v11, :cond_6

    const/4 v11, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v4

    move-object v9, v10

    :goto_3
    const-string v11, "Mms/SpamFilter"

    const-string v12, " isSpam Error.."

    invoke-static {v11, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v4

    goto :goto_3

    :cond_9
    move-object v9, v10

    goto :goto_2
.end method

.method public static isSpam(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {p0}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isSpamOptionOn(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    move v6, v7

    :goto_0
    return v6

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "messageblock_mode"

    const/4 v10, 0x2

    invoke-static {v6, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    move v6, v7

    goto :goto_0

    :cond_1
    if-ne v0, v8, :cond_2

    move v6, v8

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isUnknownSender(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v8

    goto :goto_0

    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v6, v7

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->fillIfCountChanged()V

    :try_start_0
    sget-object v9, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v6, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v6, v6, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v6, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v6, v6, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mType:I
    invoke-static {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$300(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v6

    if-nez v6, :cond_5

    if-nez v3, :cond_5

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z
    invoke-static {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$000(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Z

    move-result v6

    if-eqz v6, :cond_5

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mCriteria:I
    invoke-static {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$200(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v6

    if-eqz v6, :cond_7

    if-eqz p1, :cond_5

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, " "

    const-string v10, ""

    invoke-virtual {p1, v6, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v6, "-"

    const-string v10, ""

    invoke-virtual {p1, v6, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_6
    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "Mms/SpamFilter"

    const-string v10, "filtered by number CRITERIA_EXACTLY_SAME"

    invoke-static {v6, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v9

    move v6, v8

    goto/16 :goto_0

    :cond_7
    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "Mms/SpamFilter"

    const-string v10, "filtered by number CRITERIA_EXACTLY_SAME"

    invoke-static {v6, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v9

    move v6, v8

    goto/16 :goto_0

    :pswitch_1
    if-eqz p1, :cond_5

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "Mms/SpamFilter"

    const-string v10, "filtered by number"

    invoke-static {v6, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v9

    move v6, v8

    goto/16 :goto_0

    :pswitch_2
    if-eqz p1, :cond_5

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "Mms/SpamFilter"

    const-string v10, "filtered by number"

    invoke-static {v6, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v9

    move v6, v8

    goto/16 :goto_0

    :pswitch_3
    if-eqz p1, :cond_5

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "Mms/SpamFilter"

    const-string v10, "filtered by number"

    invoke-static {v6, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v9

    move v6, v8

    goto/16 :goto_0

    :cond_8
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    const-string v6, "Mms/SpamFilter"

    const-string v8, "isSpam return false"

    invoke-static {v6, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v6
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v2

    const-string v6, "Mms/SpamFilter"

    const-string v8, "NullPointerExcetpion occurred."

    invoke-static {v6, v8}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static isSpam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {p0}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isSpamOptionOn(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    move v7, v8

    :goto_0
    return v7

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "messageblock_mode"

    const/4 v11, 0x2

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    move v7, v8

    goto :goto_0

    :cond_1
    if-ne v0, v9, :cond_2

    move v7, v9

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isUnknownSender(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v9

    goto :goto_0

    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    move v7, v8

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->fillIfCountChanged()V

    :try_start_0
    sget-object v10, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v7, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v7, v7, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v7, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v7, v7, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mType:I
    invoke-static {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$300(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v7

    if-nez v7, :cond_8

    if-nez v3, :cond_5

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z
    invoke-static {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$000(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Z

    move-result v7

    if-eqz v7, :cond_5

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mCriteria:I
    invoke-static {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$200(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v7

    if-eqz v7, :cond_7

    if-eqz p1, :cond_5

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, " "

    const-string v11, ""

    invoke-virtual {p1, v7, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v7, "-"

    const-string v11, ""

    invoke-virtual {p1, v7, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_6
    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "Mms/SpamFilter"

    const-string v11, "filtered by number CRITERIA_EXACTLY_SAME"

    invoke-static {v7, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v10

    move v7, v9

    goto/16 :goto_0

    :cond_7
    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "Mms/SpamFilter"

    const-string v11, "filtered by number CRITERIA_EXACTLY_SAME"

    invoke-static {v7, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v10

    move v7, v9

    goto/16 :goto_0

    :pswitch_1
    if-eqz p1, :cond_5

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "Mms/SpamFilter"

    const-string v11, "filtered by number"

    invoke-static {v7, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v10

    move v7, v9

    goto/16 :goto_0

    :pswitch_2
    if-eqz p1, :cond_5

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "Mms/SpamFilter"

    const-string v11, "filtered by number"

    invoke-static {v7, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v10

    move v7, v9

    goto/16 :goto_0

    :pswitch_3
    if-eqz p1, :cond_5

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "Mms/SpamFilter"

    const-string v11, "filtered by number"

    invoke-static {v7, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v10

    move v7, v9

    goto/16 :goto_0

    :cond_8
    if-nez v4, :cond_5

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z
    invoke-static {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$000(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "Mms/SpamFilter"

    const-string v11, "filtered by string"

    invoke-static {v7, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v10

    move v7, v9

    goto/16 :goto_0

    :cond_9
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    const-string v7, "Mms/SpamFilter"

    const-string v9, "isSpam return false"

    invoke-static {v7, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v8

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v7
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v2

    const-string v7, "Mms/SpamFilter"

    const-string v9, "NullPointerExcetpion occurred."

    invoke-static {v7, v9}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static isSpamOptionOn(Landroid/content/Context;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "messageblock_mode"

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    if-ne v0, v3, :cond_3

    move v2, v3

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSpamOption(Landroid/content/Context;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method private static isUnknownSender(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSpamFilterUnknown(Landroid/content/Context;)Z

    move-result v1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const v2, 0x7f0c013b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v4

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    return v4

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    move v4, v3

    goto :goto_1
.end method

.method public static update(ILcom/android/mms/spam/SpamFilter$SpamFilterData;)V
    .locals 2

    sget-object v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v0, v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v0, v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z
    invoke-static {p1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$000(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v0, v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->dump()V

    return-void
.end method

.method public static update(ILjava/lang/String;)V
    .locals 3

    sget-object v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v1, v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v1, v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    # setter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$102(Lcom/android/mms/spam/SpamFilter$SpamFilterData;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->dump()V

    goto :goto_0
.end method

.method public static update(ILjava/lang/String;Z)V
    .locals 3

    sget-object v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v1, v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v1, v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    # setter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$102(Lcom/android/mms/spam/SpamFilter$SpamFilterData;Ljava/lang/String;)Ljava/lang/String;

    # setter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z
    invoke-static {v0, p2}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$002(Lcom/android/mms/spam/SpamFilter$SpamFilterData;Z)Z

    invoke-static {}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->dump()V

    goto :goto_0
.end method

.method public static update(ILjava/lang/String;ZI)V
    .locals 3

    sget-object v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v1, v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v1, v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    # setter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$102(Lcom/android/mms/spam/SpamFilter$SpamFilterData;Ljava/lang/String;)Ljava/lang/String;

    # setter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z
    invoke-static {v0, p2}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$002(Lcom/android/mms/spam/SpamFilter$SpamFilterData;Z)Z

    # setter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mCriteria:I
    invoke-static {v0, p3}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$202(Lcom/android/mms/spam/SpamFilter$SpamFilterData;I)I

    invoke-static {}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->dump()V

    goto :goto_0
.end method

.method public static update(IZ)V
    .locals 4

    sget-object v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v1, v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v1, v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    const-string v1, "Mms/SpamFilter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update before data= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data.mEnable= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$000(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    # setter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z
    invoke-static {v0, p1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$002(Lcom/android/mms/spam/SpamFilter$SpamFilterData;Z)Z

    const-string v1, "Mms/SpamFilter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update after data= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data.mEnable= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$000(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->dump()V

    goto :goto_0
.end method

.method public static updateSpamNumber(Landroid/content/Context;ZI)V
    .locals 5

    const/4 v4, 0x0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "Mms/SpamFilter"

    const-string v3, "updateSpamNumber"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "enable"

    if-nez p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {p2, p1}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->update(IZ)V

    return-void

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static updateSpamNumber(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 12

    const/4 v11, 0x0

    const/4 v2, 0x0

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const/4 v7, 0x0

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "filter="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " AND filter_type="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    const-string v0, "Mms/SpamFilter"

    const-string v1, "updateSpamNumber"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "enable"

    if-nez p1, :cond_2

    move v0, v11

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v0, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v8, v9, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {v7, p1}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->update(IZ)V

    return-void

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
