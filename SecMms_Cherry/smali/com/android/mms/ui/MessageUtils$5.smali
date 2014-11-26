.class final Lcom/android/mms/ui/MessageUtils$5;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils;->handleReadReport(Landroid/content/Context;[Ljava/lang/Long;ILjava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$map:Ljava/util/Map;

.field final synthetic val$mapSimSlot:Ljava/util/Map;

.field final synthetic val$needDelay:Z

.field final synthetic val$readReportDataMap:Ljava/util/Map;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;ILjava/lang/Runnable;ZLjava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$5;->val$map:Ljava/util/Map;

    iput-object p2, p0, Lcom/android/mms/ui/MessageUtils$5;->val$mapSimSlot:Ljava/util/Map;

    iput-object p3, p0, Lcom/android/mms/ui/MessageUtils$5;->val$context:Landroid/content/Context;

    iput p4, p0, Lcom/android/mms/ui/MessageUtils$5;->val$status:I

    iput-object p5, p0, Lcom/android/mms/ui/MessageUtils$5;->val$callback:Ljava/lang/Runnable;

    iput-boolean p6, p0, Lcom/android/mms/ui/MessageUtils$5;->val$needDelay:Z

    iput-object p7, p0, Lcom/android/mms/ui/MessageUtils$5;->val$readReportDataMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const-wide/16 v9, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsReadReportPdu()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$5;->val$map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v1, v0, v4

    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$5;->val$mapSimSlot:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$5;->val$mapSimSlot:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$5;->val$context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget v6, p0, Lcom/android/mms/ui/MessageUtils$5;->val$status:I

    invoke-static/range {v0 .. v6}, Lcom/android/mms/transaction/MmsMessageSender;->sendReadRec(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$5;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/android/mms/ui/MessageUtils$5$1;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/MessageUtils$5$1;-><init>(Lcom/android/mms/ui/MessageUtils$5;)V

    iget-boolean v3, p0, Lcom/android/mms/ui/MessageUtils$5;->val$needDelay:Z

    if-eqz v3, :cond_3

    const-wide/16 v3, 0x7d0

    :goto_2
    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_3
    move-wide v3, v9

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$5;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/MessageUtils$5;->val$readReportDataMap:Ljava/util/Map;

    iget v4, p0, Lcom/android/mms/ui/MessageUtils$5;->val$status:I

    invoke-static {v0, v3, v4}, Lcom/android/mms/transaction/MmsMessageSender;->sendReadRec(Landroid/content/Context;Ljava/util/Map;I)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$5;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/mms/ui/MessageUtils$5$2;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/MessageUtils$5$2;-><init>(Lcom/android/mms/ui/MessageUtils$5;)V

    iget-boolean v4, p0, Lcom/android/mms/ui/MessageUtils$5;->val$needDelay:Z

    if-eqz v4, :cond_5

    const-wide/16 v9, 0xfa0

    :cond_5
    invoke-virtual {v0, v3, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3
.end method
