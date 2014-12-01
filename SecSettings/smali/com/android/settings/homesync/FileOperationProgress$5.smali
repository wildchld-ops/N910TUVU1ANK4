.class Lcom/android/settings/homesync/FileOperationProgress$5;
.super Ljava/lang/Object;
.source "FileOperationProgress.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/homesync/FileOperationProgress;->createDialog(I)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/homesync/FileOperationProgress;


# direct methods
.method constructor <init>(Lcom/android/settings/homesync/FileOperationProgress;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/homesync/FileOperationProgress$5;->this$0:Lcom/android/settings/homesync/FileOperationProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homesync/FileOperationProgress$5;->this$0:Lcom/android/settings/homesync/FileOperationProgress;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    return-void
.end method
