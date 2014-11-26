.class Lcom/android/launcher2/DragState$2;
.super Ljava/lang/Object;
.source "DragState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/DragState;->onDelete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/DragState;


# direct methods
.method constructor <init>(Lcom/android/launcher2/DragState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/DragState$2;->this$0:Lcom/android/launcher2/DragState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/DragState$2;->this$0:Lcom/android/launcher2/DragState;

    # getter for: Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/launcher2/DragState;->access$000(Lcom/android/launcher2/DragState;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-static {v0}, Lcom/android/launcher2/guide/GuideFragment;->showCompleteDialog(Landroid/app/Activity;)V

    return-void
.end method
