.class public Landroid/hardware/contextaware/manager/ContextBean;
.super Ljava/lang/Object;
.source "ContextBean.java"


# instance fields
.field private mContextBundle:Landroid/os/Bundle;

.field private mContextBundleForDisplay:Landroid/os/Bundle;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextBean;->clearContextBean()V

    .line 35
    return-void
.end method

.method private putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 260
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextBean;->mContextBundleForDisplay:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 275
    if-eqz p2, :cond_0

    array-length v0, p2

    if-gtz v0, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextBean;->mContextBundleForDisplay:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected final clearContextBean()V
    .locals 1

    .prologue
    .line 247
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    .line 248
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/manager/ContextBean;->mContextBundleForDisplay:Landroid/os/Bundle;

    .line 249
    return-void
.end method

.method protected final getContextBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method protected final getContextBundleForDisplay()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextBean;->mContextBundleForDisplay:Landroid/os/Bundle;

    return-object v0
.end method

.method public final putContext(Ljava/lang/String;D)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 103
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 104
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public final putContext(Ljava/lang/String;F)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 90
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 91
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public final putContext(Ljava/lang/String;I)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 77
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 78
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public final putContext(Ljava/lang/String;J)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 116
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 117
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public final putContext(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 129
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-direct {p0, p1, p2}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public final putContext(Ljava/lang/String;Z)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 64
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 65
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public final putContext(Ljava/lang/String;[D)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 208
    if-eqz p2, :cond_0

    array-length v2, p2

    if-gtz v2, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v2, p0, Landroid/hardware/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 214
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 215
    .local v1, strArr:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 216
    aget-wide v2, p2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 218
    :cond_2
    invoke-direct {p0, p1, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final putContext(Ljava/lang/String;[F)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 186
    if-eqz p2, :cond_0

    array-length v2, p2

    if-gtz v2, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v2, p0, Landroid/hardware/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 192
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 193
    .local v1, strArr:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 194
    aget v2, p2, v0

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 196
    :cond_2
    invoke-direct {p0, p1, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final putContext(Ljava/lang/String;[I)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 164
    if-eqz p2, :cond_0

    array-length v2, p2

    if-gtz v2, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-object v2, p0, Landroid/hardware/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 170
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 171
    .local v1, strArr:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 172
    aget v2, p2, v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 174
    :cond_2
    invoke-direct {p0, p1, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final putContext(Ljava/lang/String;[J)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 230
    if-eqz p2, :cond_0

    array-length v2, p2

    if-gtz v2, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-object v2, p0, Landroid/hardware/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 236
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 237
    .local v1, strArr:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 238
    aget-wide v2, p2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 240
    :cond_2
    invoke-direct {p0, p1, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final putContext(Ljava/lang/String;[Z)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 142
    if-eqz p2, :cond_0

    array-length v2, p2

    if-gtz v2, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v2, p0, Landroid/hardware/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 148
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 149
    .local v1, strArr:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 150
    aget-boolean v2, p2, v0

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 152
    :cond_2
    invoke-direct {p0, p1, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method
