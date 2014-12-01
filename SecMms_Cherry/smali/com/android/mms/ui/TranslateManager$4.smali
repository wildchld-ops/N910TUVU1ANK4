.class Lcom/android/mms/ui/TranslateManager$4;
.super Ljava/lang/Object;
.source "TranslateManager.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/TranslateManager;->showTranslateDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/TranslateManager;

.field final synthetic val$addTextText:Landroid/widget/TextView;

.field final synthetic val$checkAddText:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field final synthetic val$checkAddTextLayout:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/TranslateManager;Lcom/sec/android/touchwiz/widget/TwCheckBox;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/TranslateManager$4;->this$0:Lcom/android/mms/ui/TranslateManager;

    iput-object p2, p0, Lcom/android/mms/ui/TranslateManager$4;->val$checkAddText:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object p3, p0, Lcom/android/mms/ui/TranslateManager$4;->val$checkAddTextLayout:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/android/mms/ui/TranslateManager$4;->val$addTextText:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/TranslateManager$4;->val$checkAddText:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/TranslateManager$4;->val$checkAddTextLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/TranslateManager$4;->val$addTextText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/TranslateManager$4;->val$checkAddText:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/TranslateManager$4;->val$checkAddTextLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/TranslateManager$4;->val$addTextText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method
