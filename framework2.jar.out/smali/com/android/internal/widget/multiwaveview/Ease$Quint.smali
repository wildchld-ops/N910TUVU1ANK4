.class Lcom/android/internal/widget/multiwaveview/Ease$Quint;
.super Ljava/lang/Object;
.source "Ease.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/multiwaveview/Ease;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Quint"
.end annotation


# static fields
.field public static final easeIn:Landroid/animation/TimeInterpolator;

.field public static final easeInOut:Landroid/animation/TimeInterpolator;

.field public static final easeOut:Landroid/animation/TimeInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/widget/multiwaveview/Ease$Quint$1;

    invoke-direct {v0}, Lcom/android/internal/widget/multiwaveview/Ease$Quint$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/multiwaveview/Ease$Quint;->easeIn:Landroid/animation/TimeInterpolator;

    new-instance v0, Lcom/android/internal/widget/multiwaveview/Ease$Quint$2;

    invoke-direct {v0}, Lcom/android/internal/widget/multiwaveview/Ease$Quint$2;-><init>()V

    sput-object v0, Lcom/android/internal/widget/multiwaveview/Ease$Quint;->easeOut:Landroid/animation/TimeInterpolator;

    new-instance v0, Lcom/android/internal/widget/multiwaveview/Ease$Quint$3;

    invoke-direct {v0}, Lcom/android/internal/widget/multiwaveview/Ease$Quint$3;-><init>()V

    sput-object v0, Lcom/android/internal/widget/multiwaveview/Ease$Quint;->easeInOut:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
