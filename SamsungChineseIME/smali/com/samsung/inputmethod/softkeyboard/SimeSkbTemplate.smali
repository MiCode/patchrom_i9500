.class public Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;
.super Ljava/lang/Object;
.source "SimeSkbTemplate.java"


# instance fields
.field private mBalloonBg:Landroid/graphics/drawable/Drawable;

.field private mKeyIconRecords:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/samsung/inputmethod/softkeyboard/KeyIconRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyRecords:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/samsung/inputmethod/softkeyboard/KeyRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyTypeList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyViewRecords:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/samsung/inputmethod/softkeyboard/KeyViewRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupBg:Landroid/graphics/drawable/Drawable;

.field private mSkbBg:Landroid/graphics/drawable/Drawable;

.field private mSkbTemplateId:I

.field private mXMargin:F

.field private mYMargin:F


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "skbTemplateId"

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mXMargin:F

    .line 61
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mYMargin:F

    .line 63
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mKeyTypeList:Ljava/util/Vector;

    .line 68
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mKeyIconRecords:Ljava/util/Vector;

    .line 73
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mKeyRecords:Ljava/util/Vector;

    .line 78
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mKeyViewRecords:Ljava/util/Vector;

    .line 81
    iput p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mSkbTemplateId:I

    .line 82
    return-void
.end method


# virtual methods
.method public addDefaultKey(ILcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V
    .locals 4
    .parameter "keyId"
    .parameter "softKey"

    .prologue
    .line 202
    if-nez p2, :cond_0

    .line 215
    :goto_0
    return-void

    .line 204
    :cond_0
    new-instance v0, Lcom/samsung/inputmethod/softkeyboard/KeyRecord;

    invoke-direct {v0}, Lcom/samsung/inputmethod/softkeyboard/KeyRecord;-><init>()V

    .line 205
    .local v0, keyRecord:Lcom/samsung/inputmethod/softkeyboard/KeyRecord;
    iput p1, v0, Lcom/samsung/inputmethod/softkeyboard/KeyRecord;->keyId:I

    .line 206
    iput-object p2, v0, Lcom/samsung/inputmethod/softkeyboard/KeyRecord;->softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .line 208
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mKeyRecords:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 209
    .local v2, size:I
    const/4 v1, 0x0

    .line 210
    .local v1, pos:I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 211
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mKeyRecords:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/inputmethod/softkeyboard/KeyRecord;

    iget v3, v3, Lcom/samsung/inputmethod/softkeyboard/KeyRecord;->keyId:I

    if-lt v3, p1, :cond_2

    .line 214
    :cond_1
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mKeyRecords:Ljava/util/Vector;

    invoke-virtual {v3, v1, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 212
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public addDefaultKeyIcons(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "keyCode"
    .parameter "icon"
    .parameter "iconPopup"

    .prologue
    .line 151
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    new-instance v0, Lcom/samsung/inputmethod/softkeyboard/KeyIconRecord;

    invoke-direct {v0}, Lcom/samsung/inputmethod/softkeyboard/KeyIconRecord;-><init>()V

    .line 154
    .local v0, iconRecord:Lcom/samsung/inputmethod/softkeyboard/KeyIconRecord;
    iput-object p2, v0, Lcom/samsung/inputmethod/softkeyboard/KeyIconRecord;->icon:Landroid/graphics/drawable/Drawable;

    .line 155
    iput-object p3, v0, Lcom/samsung/inputmethod/softkeyboard/KeyIconRecord;->iconPopup:Landroid/graphics/drawable/Drawable;

    .line 156
    iput p1, v0, Lcom/samsung/inputmethod/softkeyboard/KeyIconRecord;->keyCode:I

    .line 158
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mKeyIconRecords:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 159
    .local v2, size:I
    const/4 v1, 0x0

    .line 160
    .local v1, pos:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 161
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mKeyIconRecords:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/inputmethod/softkeyboard/KeyIconRecord;

    iget v3, v3, Lcom/samsung/inputmethod/softkeyboard/KeyIconRecord;->keyCode:I

    if-lt v3, p1, :cond_3

    .line 164
    :cond_2
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mKeyIconRecords:Ljava/util/Vector;

    invoke-virtual {v3, v1, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 162
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public addDefaultKeyView(ILcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;)V
    .locals 4
    .parameter "keyId"
    .parameter "softKeyView"

    .prologue
    .line 235
    if-nez p2, :cond_0

    .line 250
    :goto_0
    return-void

    .line 238
    :cond_0
    new-instance v0, Lcom/samsung/inputmethod/softkeyboard/KeyViewRecord;

    invoke-direct {v0}, Lcom/samsung/inputmethod/softkeyboard/KeyViewRecord;-><init>()V

    .line 239
    .local v0, keyViewRecord:Lcom/samsung/inputmethod/softkeyboard/KeyViewRecord;
    iput p1, v0, Lcom/samsung/inputmethod/softkeyboard/KeyViewRecord;->keyId:I

    .line 240
    iput-object p2, v0, Lcom/samsung/inputmethod/softkeyboard/KeyViewRecord;->softKeyView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;

    .line 242
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mKeyViewRecords:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 243
    .local v2, size:I
    const/4 v1, 0x0

    .line 244
    .local v1, pos:I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 245
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mKeyViewRecords:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/inputmethod/softkeyboard/KeyViewRecord;

    iget v3, v3, Lcom/samsung/inputmethod/softkeyboard/KeyViewRecord;->keyId:I

    if-lt v3, p1, :cond_2

    .line 249
    :cond_1
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mKeyViewRecords:Ljava/util/Vector;

    invoke-virtual {v3, v1, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 247
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public addKeyType(Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;)Z
    .locals 2
    .parameter "keyType"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mKeyTypeList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget v1, p1, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mKeyTypeId:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 141
    :goto_0
    return v0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mKeyTypeList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 141
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public createKeyType(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;
    .locals 1
    .parameter "id"
    .parameter "bg"
    .parameter "hlBg"

    .prologue
    .line 134
    new-instance v0, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;-><init>(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public getBalloonBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mBalloonBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDefaultKey(I)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .locals 5
    .parameter "keyId"

    .prologue
    const/4 v3, 0x0

    .line 218
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mKeyRecords:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v2

    .line 219
    .local v2, size:I
    const/4 v1, 0x0

    .line 220
    .local v1, pos:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 221
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mKeyRecords:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/softkeyboard/KeyRecord;

    .line 222
    .local v0, keyRecord:Lcom/samsung/inputmethod/softkeyboard/KeyRecord;
    iget v4, v0, Lcom/samsung/inputmethod/softkeyboard/KeyRecord;->keyId:I

    if-ge v4, p1, :cond_0

    .line 223
    add-int/lit8 v1, v1, 0x1

    .line 224
    goto :goto_0

    .line 226
    :cond_0
    iget v4, v0, Lcom/samsung/inputmethod/softkeyboard/KeyRecord;->keyId:I

    if-ne v4, p1, :cond_1

    .line 227
    iget-object v3, v0, Lcom/samsung/inputmethod/softkeyboard/KeyRecord;->softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .line 231
    .end local v0           #keyRecord:Lcom/samsung/inputmethod/softkeyboard/KeyRecord;
    :cond_1
    return-object v3
.end method

.method public getDefaultKeyIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "keyCode"

    .prologue
    const/4 v3, 0x0

    .line 168
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mKeyIconRecords:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v2

    .line 169
    .local v2, size:I
    const/4 v1, 0x0

    .line 170
    .local v1, pos:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 171
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mKeyIconRecords:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/softkeyboard/KeyIconRecord;

    .line 172
    .local v0, iconRecord:Lcom/samsung/inputmethod/softkeyboard/KeyIconRecord;
    iget v4, v0, Lcom/samsung/inputmethod/softkeyboard/KeyIconRecord;->keyCode:I

    if-ge v4, p1, :cond_0

    .line 173
    add-int/lit8 v1, v1, 0x1

    .line 174
    goto :goto_0

    .line 176
    :cond_0
    iget v4, v0, Lcom/samsung/inputmethod/softkeyboard/KeyIconRecord;->keyCode:I

    if-ne v4, p1, :cond_1

    .line 177
    iget-object v3, v0, Lcom/samsung/inputmethod/softkeyboard/KeyIconRecord;->icon:Landroid/graphics/drawable/Drawable;

    .line 181
    .end local v0           #iconRecord:Lcom/samsung/inputmethod/softkeyboard/KeyIconRecord;
    :cond_1
    return-object v3
.end method

.method public getDefaultKeyIconPopup(I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "keyCode"

    .prologue
    const/4 v3, 0x0

    .line 185
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mKeyIconRecords:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v2

    .line 186
    .local v2, size:I
    const/4 v1, 0x0

    .line 187
    .local v1, pos:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 188
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mKeyIconRecords:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/softkeyboard/KeyIconRecord;

    .line 189
    .local v0, iconRecord:Lcom/samsung/inputmethod/softkeyboard/KeyIconRecord;
    iget v4, v0, Lcom/samsung/inputmethod/softkeyboard/KeyIconRecord;->keyCode:I

    if-ge v4, p1, :cond_0

    .line 190
    add-int/lit8 v1, v1, 0x1

    .line 191
    goto :goto_0

    .line 193
    :cond_0
    iget v4, v0, Lcom/samsung/inputmethod/softkeyboard/KeyIconRecord;->keyCode:I

    if-ne v4, p1, :cond_1

    .line 194
    iget-object v3, v0, Lcom/samsung/inputmethod/softkeyboard/KeyIconRecord;->iconPopup:Landroid/graphics/drawable/Drawable;

    .line 198
    .end local v0           #iconRecord:Lcom/samsung/inputmethod/softkeyboard/KeyIconRecord;
    :cond_1
    return-object v3
.end method

.method public getDefaultKeyView(I)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;
    .locals 5
    .parameter "keyId"

    .prologue
    const/4 v3, 0x0

    .line 253
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mKeyViewRecords:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v2

    .line 254
    .local v2, size:I
    const/4 v1, 0x0

    .line 255
    .local v1, pos:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 256
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mKeyViewRecords:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/softkeyboard/KeyViewRecord;

    .line 257
    .local v0, keyViewRecord:Lcom/samsung/inputmethod/softkeyboard/KeyViewRecord;
    iget v4, v0, Lcom/samsung/inputmethod/softkeyboard/KeyViewRecord;->keyId:I

    if-ge v4, p1, :cond_0

    .line 258
    add-int/lit8 v1, v1, 0x1

    .line 259
    goto :goto_0

    .line 261
    :cond_0
    iget v4, v0, Lcom/samsung/inputmethod/softkeyboard/KeyViewRecord;->keyId:I

    if-ne v4, p1, :cond_1

    .line 262
    iget-object v3, v0, Lcom/samsung/inputmethod/softkeyboard/KeyViewRecord;->softKeyView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;

    .line 266
    .end local v0           #keyViewRecord:Lcom/samsung/inputmethod/softkeyboard/KeyViewRecord;
    :cond_1
    return-object v3
.end method

.method public getKeyType(I)Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;
    .locals 1
    .parameter "typeId"

    .prologue
    .line 145
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mKeyTypeList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 146
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mKeyTypeList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    goto :goto_0
.end method

.method public getPopupBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mPopupBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSkbBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mSkbBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSkbTemplateId()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mSkbTemplateId:I

    return v0
.end method

.method public getXMargin()F
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mXMargin:F

    return v0
.end method

.method public getYMargin()F
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mYMargin:F

    return v0
.end method

.method public setBackgrounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "skbBg"
    .parameter "balloonBg"
    .parameter "popupBg"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mSkbBg:Landroid/graphics/drawable/Drawable;

    .line 91
    iput-object p2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mBalloonBg:Landroid/graphics/drawable/Drawable;

    .line 92
    iput-object p3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mPopupBg:Landroid/graphics/drawable/Drawable;

    .line 93
    return-void
.end method

.method public setKeyBalloonBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "balloonBg"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mBalloonBg:Landroid/graphics/drawable/Drawable;

    .line 106
    return-void
.end method

.method public setMargins(FF)V
    .locals 0
    .parameter "xMargin"
    .parameter "yMargin"

    .prologue
    .line 121
    iput p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mXMargin:F

    .line 122
    iput p2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mYMargin:F

    .line 123
    return-void
.end method

.method public setPopupBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "popupBg"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mPopupBg:Landroid/graphics/drawable/Drawable;

    .line 102
    return-void
.end method

.method public setSkbBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "skbBg"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->mSkbBg:Landroid/graphics/drawable/Drawable;

    .line 98
    return-void
.end method
