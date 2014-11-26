.class Lcom/android/launcher2/LauncherModel$8$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/LauncherModel$8;

.field final synthetic val$folder:Lcom/android/launcher2/HomeFolderItem;

.field final synthetic val$item:Lcom/android/launcher2/HomeItem;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$8;Lcom/android/launcher2/HomeFolderItem;Lcom/android/launcher2/HomeItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$8$1;->this$0:Lcom/android/launcher2/LauncherModel$8;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$8$1;->val$folder:Lcom/android/launcher2/HomeFolderItem;

    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$8$1;->val$item:Lcom/android/launcher2/HomeItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$8$1;->val$folder:Lcom/android/launcher2/HomeFolderItem;

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$8$1;->val$item:Lcom/android/launcher2/HomeItem;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeFolderItem;->removeItem(Lcom/android/launcher2/BaseItem;)V

    return-void
.end method
