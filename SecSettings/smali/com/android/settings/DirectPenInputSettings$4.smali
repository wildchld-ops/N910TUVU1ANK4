.class Lcom/android/settings/DirectPenInputSettings$4;
.super Ljava/lang/Object;
.source "DirectPenInputSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DirectPenInputSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DirectPenInputSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DirectPenInputSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    const v10, 0x7f090f6c

    const v8, 0x7f090f65

    const v9, 0x7f090f59

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    # getter for: Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/settings/DirectPenInputSettings;->access$100(Lcom/android/settings/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    # getter for: Lcom/android/settings/DirectPenInputSettings;->URI_PEN_WRITING_BUDDY:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/settings/DirectPenInputSettings;->access$200(Lcom/android/settings/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    move v3, v4

    :goto_0
    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    # getter for: Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/settings/DirectPenInputSettings;->access$100(Lcom/android/settings/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    # getter for: Lcom/android/settings/DirectPenInputSettings;->ACCESSIBILITY_MAGNIFICATION_ENABLED:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/settings/DirectPenInputSettings;->access$300(Lcom/android/settings/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_5

    move v1, v4

    :goto_1
    const/4 v0, 0x0

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-virtual {v6}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "com.sec.feature.overlaymagnifier"

    invoke-static {v6, v7}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    # getter for: Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/settings/DirectPenInputSettings;->access$100(Lcom/android/settings/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    # getter for: Lcom/android/settings/DirectPenInputSettings;->ACCESSIBILITY_MAGNIFIER:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/settings/DirectPenInputSettings;->access$400(Lcom/android/settings/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_6

    move v0, v4

    :cond_0
    :goto_2
    if-nez v3, :cond_7

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    # getter for: Lcom/android/settings/DirectPenInputSettings;->isShowEnablePopup:Z
    invoke-static {v6}, Lcom/android/settings/DirectPenInputSettings;->access$500(Lcom/android/settings/DirectPenInputSettings;)Z

    move-result v6

    if-nez v6, :cond_7

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-virtual {v6}, Lcom/android/settings/DirectPenInputSettings;->isTalkBackEnabled()Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-virtual {v6, v10}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\n- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    const v7, 0x7f090f64

    invoke-virtual {v6, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-virtual {v6, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    # invokes: Lcom/android/settings/DirectPenInputSettings;->isTalkbackAvailable()Z
    invoke-static {v5}, Lcom/android/settings/DirectPenInputSettings;->access$600(Lcom/android/settings/DirectPenInputSettings;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-virtual {v6, v10}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\n- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-virtual {v6, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-virtual {v5}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.sec.feature.overlaymagnifier"

    invoke-static {v5, v6}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    const v7, 0x7f09095d

    invoke-virtual {v6, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-virtual {v5, v2, v4}, Lcom/android/settings/DirectPenInputSettings;->showEnableDialog(Ljava/lang/String;Z)V

    :goto_3
    return-void

    :cond_4
    move v3, v5

    goto/16 :goto_0

    :cond_5
    move v1, v5

    goto/16 :goto_1

    :cond_6
    move v0, v5

    goto/16 :goto_2

    :cond_7
    if-nez v3, :cond_8

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    # getter for: Lcom/android/settings/DirectPenInputSettings;->isShowEnablePopup:Z
    invoke-static {v6}, Lcom/android/settings/DirectPenInputSettings;->access$500(Lcom/android/settings/DirectPenInputSettings;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    const v7, 0x7f090f62

    invoke-virtual {v6, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-virtual {v8, v9}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    iget-object v8, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-virtual {v8, v9}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-virtual {v4, v2, v5}, Lcom/android/settings/DirectPenInputSettings;->showEnableDialog(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_8
    iget-object v4, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    # invokes: Lcom/android/settings/DirectPenInputSettings;->startTryIt()V
    invoke-static {v4}, Lcom/android/settings/DirectPenInputSettings;->access$800(Lcom/android/settings/DirectPenInputSettings;)V

    goto :goto_3
.end method
