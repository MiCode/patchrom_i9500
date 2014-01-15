.class public Lcom/android/settings_ex/flipfont/TypefaceFinder;
.super Ljava/lang/Object;
.source "TypefaceFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/flipfont/TypefaceFinder$TypefaceSortByName;
    }
.end annotation


# static fields
.field public static final DEFAULT_FONT_VALUE:Ljava/lang/String; = "default"

.field static final FONT_ASSET_DIR:Ljava/lang/String; = "xml"

.field static final FONT_DIRECTORY:Ljava/lang/String; = "fonts/"

.field static final FONT_EXTENSION:Ljava/lang/String; = ".ttf"

.field private static final TAG:Ljava/lang/String; = "TypefaceFinder"


# instance fields
.field public context:Landroid/content/Context;

.field public final mTypefaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/flipfont/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    .line 112
    return-void
.end method


# virtual methods
.method public findMatchingTypeface(Ljava/lang/String;)Lcom/android/settings_ex/flipfont/Typeface;
    .locals 3
    .parameter "typefaceFilename"

    .prologue
    .line 224
    const/4 v1, 0x0

    .line 225
    .local v1, typeface:Lcom/android/settings_ex/flipfont/Typeface;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 226
    iget-object v2, p0, Lcom/android/settings_ex/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #typeface:Lcom/android/settings_ex/flipfont/Typeface;
    check-cast v1, Lcom/android/settings_ex/flipfont/Typeface;

    .line 227
    .restart local v1       #typeface:Lcom/android/settings_ex/flipfont/Typeface;
    invoke-virtual {v1}, Lcom/android/settings_ex/flipfont/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 231
    :cond_0
    return-object v1

    .line 225
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public findTypefaces(Landroid/content/res/AssetManager;Ljava/lang/String;)Z
    .locals 7
    .parameter "assetManager"
    .parameter "fontPackageName"

    .prologue
    .line 69
    const/4 v3, 0x0

    .line 71
    .local v3, xmlfiles:[Ljava/lang/String;
    :try_start_0
    const-string v4, "xml"

    invoke-virtual {p1, v4}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 76
    const/4 v1, 0x0

    .line 77
    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 79
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "xml/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 80
    .local v2, in:Ljava/io/InputStream;
    aget-object v4, v3, v1

    invoke-virtual {p0, v4, v2, p2}, Lcom/android/settings_ex/flipfont/TypefaceFinder;->parseTypefaceXml(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 85
    .end local v2           #in:Ljava/io/InputStream;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .line 73
    .local v0, ex:Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 87
    .end local v0           #ex:Ljava/lang/Exception;
    :goto_2
    return v4

    .line 81
    .restart local v1       #i:I
    :catch_1
    move-exception v0

    .line 83
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v4, "TypefaceFinder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not possible to open, continue to next file, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 87
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    const/4 v4, 0x1

    goto :goto_2
.end method

.method public getMonospaceEntries(Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 4
    .parameter "entries"
    .parameter "entryValues"

    .prologue
    .line 207
    iget-object v2, p0, Lcom/android/settings_ex/flipfont/TypefaceFinder;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09099b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 208
    const-string v2, "default"

    invoke-virtual {p2, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 209
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 210
    iget-object v2, p0, Lcom/android/settings_ex/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/flipfont/Typeface;

    invoke-virtual {v2}, Lcom/android/settings_ex/flipfont/Typeface;->getMonospaceName()Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, s:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 212
    invoke-virtual {p1, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v2, p0, Lcom/android/settings_ex/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/flipfont/Typeface;

    invoke-virtual {v2}, Lcom/android/settings_ex/flipfont/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    .end local v1           #s:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public getSansEntries(Landroid/content/pm/PackageManager;Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 17
    .parameter "packageManager"
    .parameter "entries"
    .parameter "entryValues"
    .parameter "fontPackageName"

    .prologue
    .line 125
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/flipfont/TypefaceFinder;->context:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f09099b

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 126
    const-string v14, "default"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 127
    const-string v14, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 129
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    new-instance v15, Lcom/android/settings_ex/flipfont/TypefaceFinder$TypefaceSortByName;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/settings_ex/flipfont/TypefaceFinder$TypefaceSortByName;-><init>(Lcom/android/settings_ex/flipfont/TypefaceFinder;)V

    invoke-static {v14, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 130
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v7, v14, :cond_4

    .line 131
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings_ex/flipfont/Typeface;

    invoke-virtual {v14}, Lcom/android/settings_ex/flipfont/Typeface;->getSansName()Ljava/lang/String;

    move-result-object v12

    .line 132
    .local v12, s:Ljava/lang/String;
    if-eqz v12, :cond_1

    .line 134
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/flipfont/TypefaceFinder;->context:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 135
    .local v1, aManager:Landroid/content/res/AssetManager;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings_ex/flipfont/Typeface;

    invoke-virtual {v14}, Lcom/android/settings_ex/flipfont/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v6

    .line 137
    .local v6, fontName:Ljava/lang/String;
    const/16 v14, 0x2f

    invoke-virtual {v6, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    .line 138
    .local v13, start_pos:I
    const/16 v14, 0x2e

    invoke-virtual {v6, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 139
    .local v4, end_pos:I
    if-gez v4, :cond_0

    .line 140
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    .line 142
    :cond_0
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v6, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 143
    .local v8, loadTypeface:Ljava/lang/String;
    const-string v14, " "

    const-string v15, ""

    invoke-virtual {v8, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 145
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings_ex/flipfont/Typeface;

    invoke-virtual {v14}, Lcom/android/settings_ex/flipfont/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v10

    .line 149
    .local v10, packageName:Ljava/lang/String;
    const/16 v14, 0x80

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 150
    .local v2, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v14, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v14, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 151
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v11

    .line 153
    .local v11, res:Landroid/content/res/Resources;
    invoke-virtual {v11}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    .line 155
    .local v5, fontAssetManager:Landroid/content/res/AssetManager;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "fonts/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".ttf"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v5, v14}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    .line 160
    .local v9, newTypeface:Landroid/graphics/Typeface;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings_ex/flipfont/Typeface;

    invoke-virtual {v14}, Lcom/android/settings_ex/flipfont/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_3

    .line 161
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings_ex/flipfont/Typeface;

    invoke-virtual {v14}, Lcom/android/settings_ex/flipfont/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "com.monotype.android.font.droidserifitalic"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 130
    .end local v1           #aManager:Landroid/content/res/AssetManager;
    .end local v2           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v4           #end_pos:I
    .end local v5           #fontAssetManager:Landroid/content/res/AssetManager;
    .end local v6           #fontName:Ljava/lang/String;
    .end local v8           #loadTypeface:Ljava/lang/String;
    .end local v9           #newTypeface:Landroid/graphics/Typeface;
    .end local v10           #packageName:Ljava/lang/String;
    .end local v11           #res:Landroid/content/res/Resources;
    .end local v13           #start_pos:I
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 164
    .restart local v1       #aManager:Landroid/content/res/AssetManager;
    .restart local v2       #appInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v4       #end_pos:I
    .restart local v5       #fontAssetManager:Landroid/content/res/AssetManager;
    .restart local v6       #fontName:Ljava/lang/String;
    .restart local v8       #loadTypeface:Ljava/lang/String;
    .restart local v9       #newTypeface:Landroid/graphics/Typeface;
    .restart local v10       #packageName:Ljava/lang/String;
    .restart local v11       #res:Landroid/content/res/Resources;
    .restart local v13       #start_pos:I
    :cond_2
    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticModel()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 165
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings_ex/flipfont/Typeface;

    invoke-virtual {v14}, Lcom/android/settings_ex/flipfont/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "com.monotype.android.font.cooljazz"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 171
    :cond_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 172
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings_ex/flipfont/Typeface;

    invoke-virtual {v14}, Lcom/android/settings_ex/flipfont/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 173
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings_ex/flipfont/Typeface;

    invoke-virtual {v14}, Lcom/android/settings_ex/flipfont/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 174
    .end local v2           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v5           #fontAssetManager:Landroid/content/res/AssetManager;
    .end local v9           #newTypeface:Landroid/graphics/Typeface;
    .end local v11           #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v3

    .line 175
    .local v3, e:Ljava/lang/Exception;
    const-string v14, "FlipFont"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getSansEntries - Typeface.createFromAsset caused an exception for - fonts/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".ttf"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 182
    .end local v1           #aManager:Landroid/content/res/AssetManager;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #end_pos:I
    .end local v6           #fontName:Ljava/lang/String;
    .end local v8           #loadTypeface:Ljava/lang/String;
    .end local v10           #packageName:Ljava/lang/String;
    .end local v12           #s:Ljava/lang/String;
    .end local v13           #start_pos:I
    :cond_4
    return-void
.end method

.method public getSerifEntries(Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 4
    .parameter "entries"
    .parameter "entryValues"

    .prologue
    .line 190
    iget-object v2, p0, Lcom/android/settings_ex/flipfont/TypefaceFinder;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09099b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 191
    const-string v2, "default"

    invoke-virtual {p2, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 192
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 193
    iget-object v2, p0, Lcom/android/settings_ex/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/flipfont/Typeface;

    invoke-virtual {v2}, Lcom/android/settings_ex/flipfont/Typeface;->getSerifName()Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, s:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 195
    invoke-virtual {p1, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v2, p0, Lcom/android/settings_ex/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/flipfont/Typeface;

    invoke-virtual {v2}, Lcom/android/settings_ex/flipfont/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    .end local v1           #s:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public parseTypefaceXml(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 9
    .parameter "xmlFilename"
    .parameter "inStream"
    .parameter "fontPackageName"

    .prologue
    .line 95
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v4

    .line 96
    .local v4, spf:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 97
    .local v3, sp:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    .line 98
    .local v5, xr:Lorg/xml/sax/XMLReader;
    new-instance v1, Lcom/android/settings_ex/flipfont/TypefaceParser;

    invoke-direct {v1}, Lcom/android/settings_ex/flipfont/TypefaceParser;-><init>()V

    .line 99
    .local v1, fontParser:Lcom/android/settings_ex/flipfont/TypefaceParser;
    invoke-interface {v5, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 100
    new-instance v6, Lorg/xml/sax/InputSource;

    invoke-direct {v6, p2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 101
    invoke-virtual {v1}, Lcom/android/settings_ex/flipfont/TypefaceParser;->getParsedData()Lcom/android/settings_ex/flipfont/Typeface;

    move-result-object v2

    .line 102
    .local v2, newTypeface:Lcom/android/settings_ex/flipfont/Typeface;
    invoke-virtual {v2, p1}, Lcom/android/settings_ex/flipfont/Typeface;->setTypefaceFilename(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v2, p3}, Lcom/android/settings_ex/flipfont/Typeface;->setFontPackageName(Ljava/lang/String;)V

    .line 104
    iget-object v6, p0, Lcom/android/settings_ex/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v1           #fontParser:Lcom/android/settings_ex/flipfont/TypefaceParser;
    .end local v2           #newTypeface:Lcom/android/settings_ex/flipfont/Typeface;
    .end local v3           #sp:Ljavax/xml/parsers/SAXParser;
    .end local v4           #spf:Ljavax/xml/parsers/SAXParserFactory;
    .end local v5           #xr:Lorg/xml/sax/XMLReader;
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "TypefaceFinder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File parsing is not possible, omit this typeface, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
