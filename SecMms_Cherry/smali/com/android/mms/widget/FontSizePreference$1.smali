.class Lcom/android/mms/widget/FontSizePreference$1;
.super Ljava/lang/Object;
.source "FontSizePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/widget/FontSizePreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/widget/FontSizePreference;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/android/mms/widget/FontSizePreference;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/widget/FontSizePreference$1;->this$0:Lcom/android/mms/widget/FontSizePreference;

    iput p2, p0, Lcom/android/mms/widget/FontSizePreference$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/mms/widget/FontSizePreference$1;->this$0:Lcom/android/mms/widget/FontSizePreference;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v0, p0, Lcom/android/mms/widget/FontSizePreference$1;->this$0:Lcom/android/mms/widget/FontSizePreference;

    iget-object v1, p0, Lcom/android/mms/widget/FontSizePreference$1;->this$0:Lcom/android/mms/widget/FontSizePreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget v0, p0, Lcom/android/mms/widget/FontSizePreference$1;->val$index:I

    if-eq v0, p2, :cond_0

    iget-object v0, p0, Lcom/android/mms/widget/FontSizePreference$1;->this$0:Lcom/android/mms/widget/FontSizePreference;

    # getter for: Lcom/android/mms/widget/FontSizePreference;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/widget/FontSizePreference;->access$000(Lcom/android/mms/widget/FontSizePreference;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
