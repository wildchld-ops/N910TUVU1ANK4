.class public Lcom/android/mms/ui/ComposeMessageFragment$SendThreadListener;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SendThreadListener"
.end annotation


# instance fields
.field private mSendSimSlot:I

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/app/Activity;I)V
    .locals 1
    .param p2    # Landroid/app/Activity;
    .param p3    # I

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$SendThreadListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$SendThreadListener;->mSendSimSlot:I

    iput p3, p0, Lcom/android/mms/ui/ComposeMessageFragment$SendThreadListener;->mSendSimSlot:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$SendThreadListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$SendThreadListener;->mSendSimSlot:I

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->sendMessage(ZI)V

    return-void
.end method
