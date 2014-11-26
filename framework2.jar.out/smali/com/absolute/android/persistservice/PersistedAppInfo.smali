.class public Lcom/absolute/android/persistservice/PersistedAppInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private m_apkDigest:Ljava/lang/String;

.field private m_apkPath:Ljava/lang/String;

.field private m_appProfile:Lcom/absolute/android/persistence/AppProfile;

.field private m_flags:Ljava/lang/Integer;

.field private m_updateAttemptCount:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_appProfile:Lcom/absolute/android/persistence/AppProfile;

    iput-object p2, p0, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_apkPath:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_updateAttemptCount:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_flags:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_apkDigest:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a()Lcom/absolute/android/persistence/AppProfile;
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_appProfile:Lcom/absolute/android/persistence/AppProfile;

    return-object v0
.end method

.method protected final a(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_updateAttemptCount:Ljava/lang/Integer;

    return-void
.end method

.method protected final a(Lcom/absolute/android/persistence/AppProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_appProfile:Lcom/absolute/android/persistence/AppProfile;

    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_apkPath:Ljava/lang/String;

    return-void
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_apkPath:Ljava/lang/String;

    return-object v0
.end method

.method protected final b(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_flags:Ljava/lang/Integer;

    return-void
.end method

.method protected final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_apkDigest:Ljava/lang/String;

    return-void
.end method

.method protected final c()I
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_updateAttemptCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected final d()I
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_flags:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_apkDigest:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/absolute/android/persistservice/PersistedAppInfo;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/absolute/android/persistservice/PersistedAppInfo;

    iget-object v2, p0, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_appProfile:Lcom/absolute/android/persistence/AppProfile;

    iget-object v3, p1, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_appProfile:Lcom/absolute/android/persistence/AppProfile;

    invoke-virtual {v2, v3}, Lcom/absolute/android/persistence/AppProfile;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_apkPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_apkPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_updateAttemptCount:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_updateAttemptCount:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_flags:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_flags:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_apkDigest:Ljava/lang/String;

    iget-object v3, p1, Lcom/absolute/android/persistservice/PersistedAppInfo;->m_apkDigest:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
