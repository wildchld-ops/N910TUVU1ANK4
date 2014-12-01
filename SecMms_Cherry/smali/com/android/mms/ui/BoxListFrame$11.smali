.class Lcom/android/mms/ui/BoxListFrame$11;
.super Ljava/lang/Object;
.source "BoxListFrame.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BoxListFrame;->confirmDeleteDialog(Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;ZZLandroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BoxListFrame;

.field final synthetic val$checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field final synthetic val$listener:Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BoxListFrame;Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame$11;->this$0:Lcom/android/mms/ui/BoxListFrame;

    iput-object p2, p0, Lcom/android/mms/ui/BoxListFrame$11;->val$listener:Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    iput-object p3, p0, Lcom/android/mms/ui/BoxListFrame$11;->val$checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$11;->val$listener:Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$11;->val$checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->setDeleteLockedMessage(Z)V

    return-void
.end method
