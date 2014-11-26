.class Lcom/android/mms/settings/BubbleStyle$3;
.super Ljava/lang/Object;
.source "BubbleStyle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/settings/BubbleStyle;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/settings/BubbleStyle;


# direct methods
.method constructor <init>(Lcom/android/mms/settings/BubbleStyle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/settings/BubbleStyle$3;->this$0:Lcom/android/mms/settings/BubbleStyle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-static {}, Lcom/android/mms/ui/BubbleViewCache;->clearCache()V

    invoke-static {}, Lcom/android/mms/ui/BubbleViewCache;->fillCache()V

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->clearCache()V

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->fillCache()V

    return-void
.end method
