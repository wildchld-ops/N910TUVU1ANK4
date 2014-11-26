.class Lcom/android/settings/motion/DoubleTapTutorial$Header;
.super Ljava/lang/Object;
.source "DoubleTapTutorial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/motion/DoubleTapTutorial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Header"
.end annotation


# instance fields
.field public iconRes:I

.field final synthetic this$0:Lcom/android/settings/motion/DoubleTapTutorial;

.field public title:Ljava/lang/CharSequence;

.field public titleRes:I


# direct methods
.method public constructor <init>(Lcom/android/settings/motion/DoubleTapTutorial;)V
    .locals 2

    const/4 v1, -0x1

    iput-object p1, p0, Lcom/android/settings/motion/DoubleTapTutorial$Header;->this$0:Lcom/android/settings/motion/DoubleTapTutorial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/settings/motion/DoubleTapTutorial$Header;->titleRes:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/motion/DoubleTapTutorial$Header;->title:Ljava/lang/CharSequence;

    iput v1, p0, Lcom/android/settings/motion/DoubleTapTutorial$Header;->iconRes:I

    return-void
.end method
