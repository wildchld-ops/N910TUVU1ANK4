.class Lcom/android/phone/callsettings/CaptureImageViewer$4$1;
.super Ljava/lang/Object;
.source "CaptureImageViewer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/CaptureImageViewer$4;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/CaptureImageViewer$4;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/CaptureImageViewer$4;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/CaptureImageViewer$4$1;->this$1:Lcom/android/phone/callsettings/CaptureImageViewer$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const v11, 0x7f0a006e

    const v10, 0x7f0a006a

    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/phone/callsettings/CaptureImageViewer$4$1;->this$1:Lcom/android/phone/callsettings/CaptureImageViewer$4;

    iget-object v5, v5, Lcom/android/phone/callsettings/CaptureImageViewer$4;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    # getter for: Lcom/android/phone/callsettings/CaptureImageViewer;->mSelectedFilePath:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/callsettings/CaptureImageViewer;->access$000(Lcom/android/phone/callsettings/CaptureImageViewer;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_data=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/callsettings/CaptureImageViewer$4$1;->this$1:Lcom/android/phone/callsettings/CaptureImageViewer$4;

    iget-object v6, v6, Lcom/android/phone/callsettings/CaptureImageViewer$4;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    # getter for: Lcom/android/phone/callsettings/CaptureImageViewer;->mSelectedFilePath:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/phone/callsettings/CaptureImageViewer;->access$000(Lcom/android/phone/callsettings/CaptureImageViewer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/android/phone/callsettings/CaptureImageViewer$4$1;->this$1:Lcom/android/phone/callsettings/CaptureImageViewer$4;

    iget-object v5, v5, Lcom/android/phone/callsettings/CaptureImageViewer$4;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    # getter for: Lcom/android/phone/callsettings/CaptureImageViewer;->mSelectedFilePath:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/callsettings/CaptureImageViewer;->access$000(Lcom/android/phone/callsettings/CaptureImageViewer;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    iget-object v5, p0, Lcom/android/phone/callsettings/CaptureImageViewer$4$1;->this$1:Lcom/android/phone/callsettings/CaptureImageViewer$4;

    iget-object v5, v5, Lcom/android/phone/callsettings/CaptureImageViewer$4;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    # getter for: Lcom/android/phone/callsettings/CaptureImageViewer;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/android/phone/callsettings/CaptureImageViewer;->access$400(Lcom/android/phone/callsettings/CaptureImageViewer;)Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/callsettings/CaptureImageViewer$4$1;->this$1:Lcom/android/phone/callsettings/CaptureImageViewer$4;

    iget-object v6, v6, Lcom/android/phone/callsettings/CaptureImageViewer$4;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    # getter for: Lcom/android/phone/callsettings/CaptureImageViewer;->mUri:Landroid/net/Uri;
    invoke-static {v6}, Lcom/android/phone/callsettings/CaptureImageViewer;->access$300(Lcom/android/phone/callsettings/CaptureImageViewer;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v4, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/phone/callsettings/CaptureImageViewer$4$1;->this$1:Lcom/android/phone/callsettings/CaptureImageViewer$4;

    iget-object v5, v5, Lcom/android/phone/callsettings/CaptureImageViewer$4;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    # getter for: Lcom/android/phone/callsettings/CaptureImageViewer;->mSwitcher:Landroid/widget/ImageSwitcher;
    invoke-static {v5}, Lcom/android/phone/callsettings/CaptureImageViewer;->access$600(Lcom/android/phone/callsettings/CaptureImageViewer;)Landroid/widget/ImageSwitcher;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/android/phone/callsettings/CaptureImageViewer$4$1;->this$1:Lcom/android/phone/callsettings/CaptureImageViewer$4;

    iget-object v5, v5, Lcom/android/phone/callsettings/CaptureImageViewer$4;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    # getter for: Lcom/android/phone/callsettings/CaptureImageViewer;->mTitle:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/phone/callsettings/CaptureImageViewer;->access$700(Lcom/android/phone/callsettings/CaptureImageViewer;)Landroid/widget/TextView;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/phone/callsettings/CaptureImageViewer$4$1;->this$1:Lcom/android/phone/callsettings/CaptureImageViewer$4;

    iget-object v5, v5, Lcom/android/phone/callsettings/CaptureImageViewer$4;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    # setter for: Lcom/android/phone/callsettings/CaptureImageViewer;->mSelectedFilePath:Ljava/lang/String;
    invoke-static {v5, v7}, Lcom/android/phone/callsettings/CaptureImageViewer;->access$002(Lcom/android/phone/callsettings/CaptureImageViewer;Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/callsettings/CaptureImageViewer$4$1;->this$1:Lcom/android/phone/callsettings/CaptureImageViewer$4;

    iget-object v5, v5, Lcom/android/phone/callsettings/CaptureImageViewer$4;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    const/4 v6, -0x1

    # setter for: Lcom/android/phone/callsettings/CaptureImageViewer;->mSelectedPosition:I
    invoke-static {v5, v6}, Lcom/android/phone/callsettings/CaptureImageViewer;->access$802(Lcom/android/phone/callsettings/CaptureImageViewer;I)I

    iget-object v5, p0, Lcom/android/phone/callsettings/CaptureImageViewer$4$1;->this$1:Lcom/android/phone/callsettings/CaptureImageViewer$4;

    iget-object v5, v5, Lcom/android/phone/callsettings/CaptureImageViewer$4;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    invoke-virtual {v5}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0a006d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Gallery;

    iget-object v5, p0, Lcom/android/phone/callsettings/CaptureImageViewer$4$1;->this$1:Lcom/android/phone/callsettings/CaptureImageViewer$4;

    iget-object v5, v5, Lcom/android/phone/callsettings/CaptureImageViewer$4;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    invoke-virtual {v5}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v3, v7}, Landroid/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance v5, Lcom/android/phone/callsettings/CaptureImageViewer$ImageAdapter;

    iget-object v6, p0, Lcom/android/phone/callsettings/CaptureImageViewer$4$1;->this$1:Lcom/android/phone/callsettings/CaptureImageViewer$4;

    iget-object v6, v6, Lcom/android/phone/callsettings/CaptureImageViewer$4;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    invoke-direct {v5, v6, v1}, Lcom/android/phone/callsettings/CaptureImageViewer$ImageAdapter;-><init>(Lcom/android/phone/callsettings/CaptureImageViewer;Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroid/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-virtual {v3}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v5, "CaptureImageViewer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAdapter.getCount(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v7

    invoke-interface {v7}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v5

    invoke-interface {v5}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/callsettings/CaptureImageViewer$4$1;->this$1:Lcom/android/phone/callsettings/CaptureImageViewer$4;

    iget-object v5, v5, Lcom/android/phone/callsettings/CaptureImageViewer$4;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    invoke-virtual {v5}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/phone/callsettings/CaptureImageViewer$4$1;->this$1:Lcom/android/phone/callsettings/CaptureImageViewer$4;

    iget-object v5, v5, Lcom/android/phone/callsettings/CaptureImageViewer$4;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    invoke-virtual {v5}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/phone/callsettings/CaptureImageViewer$4$1;->this$1:Lcom/android/phone/callsettings/CaptureImageViewer$4;

    iget-object v5, v5, Lcom/android/phone/callsettings/CaptureImageViewer$4;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    invoke-virtual {v5}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/phone/callsettings/CaptureImageViewer$4$1;->this$1:Lcom/android/phone/callsettings/CaptureImageViewer$4;

    iget-object v5, v5, Lcom/android/phone/callsettings/CaptureImageViewer$4;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    invoke-virtual {v5}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
