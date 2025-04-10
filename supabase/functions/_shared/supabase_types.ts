export type Json =
  | string
  | number
  | boolean
  | null
  | { [key: string]: Json | undefined }
  | Json[]

export type Database = {
  public: {
    Tables: {
      card_dependencies: {
        Row: {
          child: string
          created_at: string
          modified_at: string
          parent: string
        }
        Insert: {
          child: string
          created_at?: string
          modified_at?: string
          parent: string
        }
        Update: {
          child?: string
          created_at?: string
          modified_at?: string
          parent?: string
        }
        Relationships: [
          {
            foreignKeyName: "card_dependencies_child_fkey"
            columns: ["child"]
            isOneToOne: false
            referencedRelation: "cards"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "card_dependencies_parent_fkey"
            columns: ["parent"]
            isOneToOne: false
            referencedRelation: "cards"
            referencedColumns: ["id"]
          },
        ]
      }
      card_pack_rel: {
        Row: {
          card: string
          created_at: string
          modified_at: string
          pack: string
        }
        Insert: {
          card: string
          created_at?: string
          modified_at?: string
          pack: string
        }
        Update: {
          card?: string
          created_at?: string
          modified_at?: string
          pack?: string
        }
        Relationships: [
          {
            foreignKeyName: "public_card_pack_rel_card_fkey"
            columns: ["card"]
            isOneToOne: false
            referencedRelation: "cards"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "public_card_pack_rel_pack_fkey"
            columns: ["pack"]
            isOneToOne: false
            referencedRelation: "packs"
            referencedColumns: ["id"]
          },
        ]
      }
      cards: {
        Row: {
          category: string | null
          content: string
          created_at: string
          header: string | null
          id: string
          is_group: boolean
          modified_at: string
          order: Database["public"]["Enums"]["card_order"] | null
        }
        Insert: {
          category?: string | null
          content: string
          created_at?: string
          header?: string | null
          id?: string
          is_group?: boolean
          modified_at?: string
          order?: Database["public"]["Enums"]["card_order"] | null
        }
        Update: {
          category?: string | null
          content?: string
          created_at?: string
          header?: string | null
          id?: string
          is_group?: boolean
          modified_at?: string
          order?: Database["public"]["Enums"]["card_order"] | null
        }
        Relationships: [
          {
            foreignKeyName: "public_cards_category_fkey"
            columns: ["category"]
            isOneToOne: false
            referencedRelation: "categories"
            referencedColumns: ["id"]
          },
        ]
      }
      categories: {
        Row: {
          created_at: string
          gradient: string[] | null
          icon: string
          id: string
          modified_at: string
        }
        Insert: {
          created_at?: string
          gradient?: string[] | null
          icon: string
          id?: string
          modified_at?: string
        }
        Update: {
          created_at?: string
          gradient?: string[] | null
          icon?: string
          id?: string
          modified_at?: string
        }
        Relationships: []
      }
      configurations: {
        Row: {
          bool: boolean | null
          created_at: string
          data_type: string
          id: string
          list: string[] | null
          modified_at: string
          number: number | null
          string: string | null
        }
        Insert: {
          bool?: boolean | null
          created_at?: string
          data_type: string
          id: string
          list?: string[] | null
          modified_at?: string
          number?: number | null
          string?: string | null
        }
        Update: {
          bool?: boolean | null
          created_at?: string
          data_type?: string
          id?: string
          list?: string[] | null
          modified_at?: string
          number?: number | null
          string?: string | null
        }
        Relationships: []
      }
      languages: {
        Row: {
          created_at: string
          icon: string
          id: string
          modified_at: string
          name: string
          public: boolean
        }
        Insert: {
          created_at?: string
          icon: string
          id: string
          modified_at?: string
          name: string
          public?: boolean
        }
        Update: {
          created_at?: string
          icon?: string
          id?: string
          modified_at?: string
          name?: string
          public?: boolean
        }
        Relationships: []
      }
      localizations: {
        Row: {
          created_at: string
          id: string
          language: string
          modified_at: string
          value: string
        }
        Insert: {
          created_at?: string
          id: string
          language: string
          modified_at?: string
          value: string
        }
        Update: {
          created_at?: string
          id?: string
          language?: string
          modified_at?: string
          value?: string
        }
        Relationships: [
          {
            foreignKeyName: "localizations_language_fkey"
            columns: ["language"]
            isOneToOne: false
            referencedRelation: "languages"
            referencedColumns: ["id"]
          },
        ]
      }
      packs: {
        Row: {
          created_at: string
          description: string | null
          id: string
          image: string | null
          is_free: boolean
          language: string | null
          modified_at: string
          name: string
        }
        Insert: {
          created_at?: string
          description?: string | null
          id?: string
          image?: string | null
          is_free?: boolean
          language?: string | null
          modified_at?: string
          name?: string
        }
        Update: {
          created_at?: string
          description?: string | null
          id?: string
          image?: string | null
          is_free?: boolean
          language?: string | null
          modified_at?: string
          name?: string
        }
        Relationships: [
          {
            foreignKeyName: "packs_language_fkey"
            columns: ["language"]
            isOneToOne: false
            referencedRelation: "languages"
            referencedColumns: ["id"]
          },
        ]
      }
    }
    Views: {
      [_ in never]: never
    }
    Functions: {
      [_ in never]: never
    }
    Enums: {
      card_order: "starting" | "ending"
    }
    CompositeTypes: {
      [_ in never]: never
    }
  }
}

type DefaultSchema = Database[Extract<keyof Database, "public">]

export type Tables<
  DefaultSchemaTableNameOrOptions extends
    | keyof (DefaultSchema["Tables"] & DefaultSchema["Views"])
    | { schema: keyof Database },
  TableName extends DefaultSchemaTableNameOrOptions extends {
    schema: keyof Database
  }
    ? keyof (Database[DefaultSchemaTableNameOrOptions["schema"]]["Tables"] &
        Database[DefaultSchemaTableNameOrOptions["schema"]]["Views"])
    : never = never,
> = DefaultSchemaTableNameOrOptions extends { schema: keyof Database }
  ? (Database[DefaultSchemaTableNameOrOptions["schema"]]["Tables"] &
      Database[DefaultSchemaTableNameOrOptions["schema"]]["Views"])[TableName] extends {
      Row: infer R
    }
    ? R
    : never
  : DefaultSchemaTableNameOrOptions extends keyof (DefaultSchema["Tables"] &
        DefaultSchema["Views"])
    ? (DefaultSchema["Tables"] &
        DefaultSchema["Views"])[DefaultSchemaTableNameOrOptions] extends {
        Row: infer R
      }
      ? R
      : never
    : never

export type TablesInsert<
  DefaultSchemaTableNameOrOptions extends
    | keyof DefaultSchema["Tables"]
    | { schema: keyof Database },
  TableName extends DefaultSchemaTableNameOrOptions extends {
    schema: keyof Database
  }
    ? keyof Database[DefaultSchemaTableNameOrOptions["schema"]]["Tables"]
    : never = never,
> = DefaultSchemaTableNameOrOptions extends { schema: keyof Database }
  ? Database[DefaultSchemaTableNameOrOptions["schema"]]["Tables"][TableName] extends {
      Insert: infer I
    }
    ? I
    : never
  : DefaultSchemaTableNameOrOptions extends keyof DefaultSchema["Tables"]
    ? DefaultSchema["Tables"][DefaultSchemaTableNameOrOptions] extends {
        Insert: infer I
      }
      ? I
      : never
    : never

export type TablesUpdate<
  DefaultSchemaTableNameOrOptions extends
    | keyof DefaultSchema["Tables"]
    | { schema: keyof Database },
  TableName extends DefaultSchemaTableNameOrOptions extends {
    schema: keyof Database
  }
    ? keyof Database[DefaultSchemaTableNameOrOptions["schema"]]["Tables"]
    : never = never,
> = DefaultSchemaTableNameOrOptions extends { schema: keyof Database }
  ? Database[DefaultSchemaTableNameOrOptions["schema"]]["Tables"][TableName] extends {
      Update: infer U
    }
    ? U
    : never
  : DefaultSchemaTableNameOrOptions extends keyof DefaultSchema["Tables"]
    ? DefaultSchema["Tables"][DefaultSchemaTableNameOrOptions] extends {
        Update: infer U
      }
      ? U
      : never
    : never

export type Enums<
  DefaultSchemaEnumNameOrOptions extends
    | keyof DefaultSchema["Enums"]
    | { schema: keyof Database },
  EnumName extends DefaultSchemaEnumNameOrOptions extends {
    schema: keyof Database
  }
    ? keyof Database[DefaultSchemaEnumNameOrOptions["schema"]]["Enums"]
    : never = never,
> = DefaultSchemaEnumNameOrOptions extends { schema: keyof Database }
  ? Database[DefaultSchemaEnumNameOrOptions["schema"]]["Enums"][EnumName]
  : DefaultSchemaEnumNameOrOptions extends keyof DefaultSchema["Enums"]
    ? DefaultSchema["Enums"][DefaultSchemaEnumNameOrOptions]
    : never

export type CompositeTypes<
  PublicCompositeTypeNameOrOptions extends
    | keyof DefaultSchema["CompositeTypes"]
    | { schema: keyof Database },
  CompositeTypeName extends PublicCompositeTypeNameOrOptions extends {
    schema: keyof Database
  }
    ? keyof Database[PublicCompositeTypeNameOrOptions["schema"]]["CompositeTypes"]
    : never = never,
> = PublicCompositeTypeNameOrOptions extends { schema: keyof Database }
  ? Database[PublicCompositeTypeNameOrOptions["schema"]]["CompositeTypes"][CompositeTypeName]
  : PublicCompositeTypeNameOrOptions extends keyof DefaultSchema["CompositeTypes"]
    ? DefaultSchema["CompositeTypes"][PublicCompositeTypeNameOrOptions]
    : never

export const Constants = {
  public: {
    Enums: {
      card_order: ["starting", "ending"],
    },
  },
} as const

