.class Lcom/android/mms/ui/MessageUtils$6$1;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils$6;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageUtils$6;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageUtils$6;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$6$1;->this$0:Lcom/android/mms/ui/MessageUtils$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsReadReportPdu()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$6$1;->this$0:Lcom/android/mms/ui/MessageUtils$6;

    iget-object v0, v0, Lcom/android/mms/ui/MessageUtils$6;->val$map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v1, v0, v5

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v3, v0, v4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$6$1;->this$0:Lcom/android/mms/ui/MessageUtils$6;

    iget-object v0, v0, Lcom/android/mms/ui/MessageUtils$6;->val$mapSimSlot:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$6$1;->this$0:Lcom/android/mms/ui/MessageUtils$6;

    iget-object v0, v0, Lcom/android/mms/ui/MessageUtils$6;->val$mapSimSlot:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$6$1;->this$0:Lcom/android/mms/ui/MessageUtils$6;

    iget-object v0, v0, Lcom/android/mms/ui/MessageUtils$6;->val$context:Landroid/content/Context;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/mms/ui/MessageUtils$6$1;->this$0:Lcom/android/mms/ui/MessageUtils$6;

    iget v6, v6, Lcom/android/mms/ui/MessageUtils$6;->val$status:I

    invoke-static/range {v0 .. v6}, Lcom/android/mms/transaction/MmsMessageSender;->sendReadRec(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$6$1;->this$0:Lcom/android/mms/ui/MessageUtils$6;

    iget-object v0, v0, Lcom/android/mms/ui/MessageUtils$6;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/MessageUtils$6$1;->this$0:Lcom/android/mms/ui/MessageUtils$6;

    iget-object v4, v4, Lcom/android/mms/ui/MessageUtils$6;->val$readReportDataMap:Ljava/util/Map;

    iget-object v5, p0, Lcom/android/mms/ui/MessageUtils$6$1;->this$0:Lcom/android/mms/ui/MessageUtils$6;

    iget v5, v5, Lcom/android/mms/ui/MessageUtils$6;->val$status:I

    invoke-static {v0, v4, v5}, Lcom/android/mms/transaction/MmsMessageSender;->sendReadRec(Landroid/content/Context;Ljava/util/Map;I)V

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$6$1;->this$0:Lcom/android/mms/ui/MessageUtils$6;

    iget-object v0, v0, Lcom/android/mms/ui/MessageUtils$6;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$6$1;->this$0:Lcom/android/mms/ui/MessageUtils$6;

    iget-object v0, v0, Lcom/android/mms/ui/MessageUtils$6;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
