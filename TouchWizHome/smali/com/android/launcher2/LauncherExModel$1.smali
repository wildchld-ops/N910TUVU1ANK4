.class Lcom/android/launcher2/LauncherExModel$1;
.super Ljava/lang/Object;
.source "LauncherExModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherExModel;->startLoader(ZZZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/LauncherExModel;

.field final synthetic val$isFestivalLoader:Z


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherExModel;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherExModel$1;->this$0:Lcom/android/launcher2/LauncherExModel;

    iput-boolean p2, p0, Lcom/android/launcher2/LauncherExModel$1;->val$isFestivalLoader:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/LauncherExModel$1;->val$isFestivalLoader:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel$1;->this$0:Lcom/android/launcher2/LauncherExModel;

    # getter for: Lcom/android/launcher2/LauncherExModel;->mLoaderTask:Lcom/android/launcher2/LauncherExModel$LoaderTask;
    invoke-static {v0}, Lcom/android/launcher2/LauncherExModel;->access$000(Lcom/android/launcher2/LauncherExModel;)Lcom/android/launcher2/LauncherExModel$LoaderTask;

    move-result-object v0

    # invokes: Lcom/android/launcher2/LauncherExModel$LoaderTask;->runBindFestivalPage()V
    invoke-static {v0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->access$100(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel$1;->this$0:Lcom/android/launcher2/LauncherExModel;

    # getter for: Lcom/android/launcher2/LauncherExModel;->mLoaderTask:Lcom/android/launcher2/LauncherExModel$LoaderTask;
    invoke-static {v0}, Lcom/android/launcher2/LauncherExModel;->access$000(Lcom/android/launcher2/LauncherExModel;)Lcom/android/launcher2/LauncherExModel$LoaderTask;

    move-result-object v0

    # invokes: Lcom/android/launcher2/LauncherExModel$LoaderTask;->runBindSecretPage()V
    invoke-static {v0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->access$200(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V

    goto :goto_0
.end method
