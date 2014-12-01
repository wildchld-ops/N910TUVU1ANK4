.class Lcom/android/settings/fingerprint/FingerPrintManagerUI$ItemLongClickListener;
.super Ljava/lang/Object;
.source "FingerPrintManagerUI.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerPrintManagerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemLongClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerPrintManagerUI;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerPrintManagerUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI$ItemLongClickListener;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI$ItemLongClickListener;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerUI;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mEnrolledFingerStatus:I
    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->access$000(Lcom/android/settings/fingerprint/FingerPrintManagerUI;)I

    move-result v2

    shl-int v3, v4, v1

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    if-ne v0, p3, :cond_1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI$ItemLongClickListener;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerUI;

    add-int/lit8 v3, p3, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->startSelectListUI(II)V

    :cond_0
    return v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
