.class public Landroid/hardware/contextaware/utilbundle/CaConvertUtil;
.super Ljava/lang/Object;
.source "CaConvertUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrToString([B)Ljava/lang/String;
    .locals 7
    .parameter "data"

    .prologue
    .line 189
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 190
    .local v4, str:Ljava/lang/StringBuffer;
    move-object v0, p0

    .local v0, arr$:[B
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-byte v2, v0, v1

    .line 191
    .local v2, k:B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    .end local v2           #k:B
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static intToByteArr(II)[B
    .locals 5
    .parameter "value"
    .parameter "size"

    .prologue
    .line 161
    const/4 v4, 0x4

    if-le p1, v4, :cond_1

    .line 162
    const/4 v3, 0x0

    .line 178
    :cond_0
    return-object v3

    .line 165
    :cond_1
    new-array v0, p1, [B

    .line 167
    .local v0, bytes:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_2

    .line 168
    mul-int/lit8 v4, v1, 0x8

    shr-int v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    :cond_2
    new-array v3, p1, [B

    .line 172
    .local v3, result:[B
    array-length v2, v0

    .line 174
    .local v2, len:I
    const/4 v1, 0x0

    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 175
    add-int/lit8 v2, v2, -0x1

    aget-byte v4, v0, v2

    aput-byte v4, v3, v1

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static strToDouble(Ljava/lang/String;)D
    .locals 5
    .parameter "value"

    .prologue
    const-wide/16 v3, 0x0

    .line 132
    if-nez p0, :cond_0

    move-wide v1, v3

    .line 148
    :goto_0
    return-wide v1

    .line 136
    :cond_0
    const-wide/16 v1, 0x0

    .line 139
    .local v1, resultDouble:D
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v1

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    move-wide v1, v3

    .line 142
    goto :goto_0

    .line 143
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 144
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    move-wide v1, v3

    .line 145
    goto :goto_0
.end method

.method public static strToFloat(Ljava/lang/String;)F
    .locals 7
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    .line 66
    if-nez p0, :cond_0

    move v4, v5

    .line 90
    :goto_0
    return v4

    .line 70
    :cond_0
    const/4 v4, 0x0

    .line 73
    .local v4, resultFloat:F
    :try_start_0
    const-string v6, "/"

    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 74
    const/16 v6, 0x2f

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 75
    .local v2, index:I
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->strToInt(Ljava/lang/String;)I

    move-result v3

    .line 76
    .local v3, numerator:I
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->strToInt(Ljava/lang/String;)I

    move-result v0

    .line 78
    .local v0, denominator:I
    int-to-float v5, v3

    int-to-float v6, v0

    div-float v4, v5, v6

    .line 79
    goto :goto_0

    .line 80
    .end local v0           #denominator:I
    .end local v2           #index:I
    .end local v3           #numerator:I
    :cond_1
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    goto :goto_0

    .line 82
    :catch_0
    move-exception v1

    .line 83
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    move v4, v5

    .line 84
    goto :goto_0

    .line 85
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 86
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    move v4, v5

    .line 87
    goto :goto_0
.end method

.method public static strToInt(Ljava/lang/String;)I
    .locals 7
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    .line 32
    if-nez p0, :cond_0

    move v3, v4

    .line 55
    :goto_0
    return v3

    .line 36
    :cond_0
    const/4 v3, 0x0

    .line 38
    .local v3, resultInt:I
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "0X"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 39
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, hexValue:Ljava/lang/String;
    const/16 v5, 0x10

    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 41
    goto :goto_0

    .end local v2           #hexValue:Ljava/lang/String;
    :cond_1
    const-string v5, "B"

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 42
    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, binValue:Ljava/lang/String;
    const/4 v5, 0x2

    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 44
    goto :goto_0

    .line 45
    .end local v0           #binValue:Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    goto :goto_0

    .line 47
    :catch_0
    move-exception v1

    .line 48
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    move v3, v4

    .line 49
    goto :goto_0

    .line 50
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 51
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    move v3, v4

    .line 52
    goto :goto_0
.end method

.method public static strToLong(Ljava/lang/String;)J
    .locals 8
    .parameter "value"

    .prologue
    const-wide/16 v4, 0x0

    .line 101
    if-nez p0, :cond_0

    move-wide v2, v4

    .line 121
    :goto_0
    return-wide v2

    .line 105
    :cond_0
    const-wide/16 v2, 0x0

    .line 107
    .local v2, resultLong:J
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "0X"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 108
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, hexValue:Ljava/lang/String;
    const/16 v6, 0x10

    invoke-static {v1, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    .line 110
    goto :goto_0

    .line 111
    .end local v1           #hexValue:Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    move-wide v2, v4

    .line 115
    goto :goto_0

    .line 116
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 117
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    move-wide v2, v4

    .line 118
    goto :goto_0
.end method
