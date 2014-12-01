.class Lcom/android/settings/OwnerInfoSettings$1;
.super Ljava/lang/Object;
.source "OwnerInfoSettings.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/OwnerInfoSettings;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/OwnerInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/OwnerInfoSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/OwnerInfoSettings$1;->this$0:Lcom/android/settings/OwnerInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings$1;->this$0:Lcom/android/settings/OwnerInfoSettings;

    # getter for: Lcom/android/settings/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/OwnerInfoSettings;->access$000(Lcom/android/settings/OwnerInfoSettings;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings$1;->this$0:Lcom/android/settings/OwnerInfoSettings;

    # invokes: Lcom/android/settings/OwnerInfoSettings;->showInputMethod()V
    invoke-static {v0}, Lcom/android/settings/OwnerInfoSettings;->access$100(Lcom/android/settings/OwnerInfoSettings;)V

    return-void
.end method
