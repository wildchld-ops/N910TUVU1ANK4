.class public final Lcom/kddi/android/internal/pdg/PDG$Settings;
.super Ljava/lang/Object;
.source "PDG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kddi/android/internal/pdg/PDG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Settings"
.end annotation


# static fields
.field public static final ACTION_ALLOW:I = 0x0

.field public static final ACTION_DENY:I = 0x1

.field public static final ACTION_OF_NON_SELECTED:Ljava/lang/String; = "action_of_non_selected"

.field public static final AGREE:I = 0x2

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_READ_ONLY:Landroid/net/Uri;

.field public static final DISABLE:I = 0x0

.field public static final ENABLE:I = 0x1

.field public static final FIRST:I = 0x0

.field public static final FIRST_LAUNCH:Ljava/lang/String; = "first_launch"

.field public static final NOT_AGREE:I = 0x1

.field public static final PDG_ENABLE:Ljava/lang/String; = "pdg_enable"

.field public static final SETTING:Ljava/lang/String; = "settings"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.kddi.android.pdg/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/kddi/android/internal/pdg/PDG$Settings;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.kddi.android.pdg.read_only/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/kddi/android/internal/pdg/PDG$Settings;->CONTENT_URI_READ_ONLY:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
