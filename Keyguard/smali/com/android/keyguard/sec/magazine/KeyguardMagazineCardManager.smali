.class public Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;
.super Ljava/lang/Object;
.source "KeyguardMagazineCardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;


# instance fields
.field private final CHANGED_TYPE_ADDED:I

.field private final CHANGED_TYPE_REMOVED:I

.field private final CHANGED_TYPE_UPDATED:I

.field private final MAGAZINE_CARD_INTENT:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCardChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.system.action.MAGAZINE_CARD"

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->MAGAZINE_CARD_INTENT:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->CHANGED_TYPE_ADDED:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->CHANGED_TYPE_UPDATED:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->CHANGED_TYPE_REMOVED:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->mCardChangedListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$1;-><init>(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->mCardChangedListeners:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->registerBroadcastReceiver()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;
    .locals 1
    .param p0    # Landroid/content/Context;

    sget-object v0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->sInstance:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->sInstance:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;

    :cond_0
    sget-object v0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->sInstance:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;

    return-object v0
.end method

.method private isSecureMode()Z
    .locals 4

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityModel;

    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "KeyguardMagazineCardManager"

    const-string v3, "isSecureMode : isSecureMode = false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const-string v2, "KeyguardMagazineCardManager"

    const-string v3, "isSecureMode : isSecureMode = true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isSecurityFiltered(Lcom/samsung/android/magazinecard/MagazineCardRecord;)Z
    .locals 3
    .param p1    # Lcom/samsung/android/magazinecard/MagazineCardRecord;

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    iget v0, v2, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mSecurityLevel:I

    invoke-direct {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->isSecureMode()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/samsung/android/magazinecard/MagazineCardInfo;->SECURITY_LEVEL_SECURE_MODE_ONLY:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_2

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget v2, Lcom/samsung/android/magazinecard/MagazineCardInfo;->SECURITY_LEVEL_NON_SECURE_MODE_ONLY:I

    and-int/2addr v2, v0

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    const-string v1, "KeyguardMagazineCardManager"

    const-string v2, "registerBroadcastReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.system.action.MAGAZINE_CARD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public getCards()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/magazinecard/MagazineCardRecord;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v1, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v2, 0x7fffffff

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v11

    iget v2, v11, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const v11, 0x7fffffff

    if-ne v2, v11, :cond_0

    move-object v0, v10

    :goto_0
    return-object v0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v10

    goto :goto_0

    :cond_0
    iget-object v10, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->mContext:Landroid/content/Context;

    const-string v11, "magazinecardservice"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/magazinecard/MagazineCardManager;

    invoke-direct {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->isSecureMode()Z

    move-result v10

    invoke-virtual {v5, v2, v10}, Lcom/samsung/android/magazinecard/MagazineCardManager;->getCardRecordIdList(IZ)[I

    move-result-object v1

    if-nez v1, :cond_1

    const-string v10, "KeyguardMagazineCardManager"

    const-string v11, "getCards : No cards"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v10, "KeyguardMagazineCardManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getCards : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " cards available"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_1
    array-length v10, v1

    if-ge v4, v10, :cond_3

    aget v7, v1, v4

    invoke-virtual {v5, v7}, Lcom/samsung/android/magazinecard/MagazineCardManager;->getCard(I)Lcom/samsung/android/magazinecard/MagazineCardRecord;

    move-result-object v6

    if-nez v6, :cond_2

    const-string v10, "KeyguardMagazineCardManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getCards : Cannot get MagazineCardRecord - RID="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const-string v10, "KeyguardMagazineCardManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getCards : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms elapsed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public notifyItemChanged(ILcom/samsung/android/magazinecard/MagazineCardRecord;)V
    .locals 4
    .param p1    # I
    .param p2    # Lcom/samsung/android/magazinecard/MagazineCardRecord;

    const-string v2, "KeyguardMagazineCardManager"

    const-string v3, "notifyItemChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->mCardChangedListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->mCardChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->isSecurityFiltered(Lcom/samsung/android/magazinecard/MagazineCardRecord;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "KeyguardMagazineCardManager"

    const-string v3, "notifyItemChanged - This card is not available"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v2, "KeyguardMagazineCardManager"

    const-string v3, "CHANGED_TYPE_ADDED"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->mCardChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;

    invoke-interface {v1, p2}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;->cardAdded(Lcom/samsung/android/magazinecard/MagazineCardRecord;)V

    goto :goto_1

    :pswitch_1
    const-string v2, "KeyguardMagazineCardManager"

    const-string v3, "CHANGED_TYPE_UPDATED"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->mCardChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;

    invoke-interface {v1, p2}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;->cardUpdated(Lcom/samsung/android/magazinecard/MagazineCardRecord;)V

    goto :goto_2

    :pswitch_2
    const-string v2, "KeyguardMagazineCardManager"

    const-string v3, "CHANGED_TYPE_REMOVED"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->mCardChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;

    invoke-interface {v1, p2}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;->cardRemoved(Lcom/samsung/android/magazinecard/MagazineCardRecord;)V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public registerCardChangedListener(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;)V
    .locals 5
    .param p1    # Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;

    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->mCardChangedListeners:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "KeyguardMagazineCardManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerCardChangedListner() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->mCardChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;

    if-ne v1, p1, :cond_1

    const-string v2, "KeyguardMagazineCardManager"

    const-string v3, "Do not register. Because it is duplicated."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->mCardChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public unregisterCardChangedListener(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;)V
    .locals 5
    .param p1    # Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;

    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->mCardChangedListeners:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v2, "KeyguardMagazineCardManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterCardChangedListner() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->mCardChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;

    if-ne v1, p1, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->mCardChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
