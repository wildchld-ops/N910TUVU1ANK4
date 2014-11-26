.class final Lcom/android/mms/util/UIUtils$1;
.super Ljava/lang/Object;
.source "UIUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/UIUtils;->delayedScrollTo(Landroid/widget/ScrollView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$directionFocus:I

.field final synthetic val$scrollView:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Landroid/widget/ScrollView;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/util/UIUtils$1;->val$scrollView:Landroid/widget/ScrollView;

    iput p2, p0, Lcom/android/mms/util/UIUtils$1;->val$directionFocus:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/util/UIUtils$1;->val$scrollView:Landroid/widget/ScrollView;

    iget v1, p0, Lcom/android/mms/util/UIUtils$1;->val$directionFocus:I

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    return-void
.end method
