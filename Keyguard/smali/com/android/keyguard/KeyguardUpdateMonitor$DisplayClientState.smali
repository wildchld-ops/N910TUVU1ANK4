.class public Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayClientState"
.end annotation


# instance fields
.field public clearing:Z

.field public clientGeneration:I

.field public intent:Landroid/app/PendingIntent;

.field public playbackEventTime:J

.field public playbackState:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
