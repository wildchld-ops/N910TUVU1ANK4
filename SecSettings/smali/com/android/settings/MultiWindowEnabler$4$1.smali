.class Lcom/android/settings/MultiWindowEnabler$4$1;
.super Ljava/lang/Object;
.source "MultiWindowEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MultiWindowEnabler$4;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/MultiWindowEnabler$4;


# direct methods
.method constructor <init>(Lcom/android/settings/MultiWindowEnabler$4;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/MultiWindowEnabler$4$1;->this$1:Lcom/android/settings/MultiWindowEnabler$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/MultiWindowEnabler$4$1;->this$1:Lcom/android/settings/MultiWindowEnabler$4;

    iget-object v0, v0, Lcom/android/settings/MultiWindowEnabler$4;->this$0:Lcom/android/settings/MultiWindowEnabler;

    # getter for: Lcom/android/settings/MultiWindowEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/MultiWindowEnabler;->access$100(Lcom/android/settings/MultiWindowEnabler;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method
