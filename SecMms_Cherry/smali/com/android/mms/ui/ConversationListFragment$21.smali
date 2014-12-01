.class final Lcom/android/mms/ui/ConversationListFragment$21;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListFragment;->confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field final synthetic val$listener:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$21;->val$listener:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iput-object p2, p0, Lcom/android/mms/ui/ConversationListFragment$21;->val$checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$21;->val$listener:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$21;->val$checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->setDeleteLockedMessage(Z)V

    return-void
.end method
