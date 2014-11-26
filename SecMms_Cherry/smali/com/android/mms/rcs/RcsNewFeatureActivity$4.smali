.class Lcom/android/mms/rcs/RcsNewFeatureActivity$4;
.super Ljava/lang/Object;
.source "RcsNewFeatureActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/rcs/RcsNewFeatureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/rcs/RcsNewFeatureActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/rcs/RcsNewFeatureActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/rcs/RcsNewFeatureActivity$4;->this$0:Lcom/android/mms/rcs/RcsNewFeatureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/mms/rcs/RcsNewFeatureActivity$4;->this$0:Lcom/android/mms/rcs/RcsNewFeatureActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
