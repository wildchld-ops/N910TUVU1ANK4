.class Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$4;
.super Ljava/lang/Object;
.source "AbstractSwiftkeyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->learnDynamicModel(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;

.field final synthetic val$trainerSequence:Lcom/touchtype_fluency/Sequence;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;Lcom/touchtype_fluency/Sequence;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$4;->this$0:Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;

    iput-object p2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$4;->val$trainerSequence:Lcom/touchtype_fluency/Sequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v1, "dlmLocker"

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$4;->this$0:Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainer:Lcom/touchtype_fluency/Trainer;

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$4;->val$trainerSequence:Lcom/touchtype_fluency/Sequence;

    invoke-interface {v0, v2}, Lcom/touchtype_fluency/Trainer;->addSequence(Lcom/touchtype_fluency/Sequence;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
