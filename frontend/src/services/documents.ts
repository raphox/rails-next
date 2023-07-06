import { api } from "@/services";
import { useQuery } from "@tanstack/react-query";

export type Document = {
  id: string;
  title: string;
  description: string;
  link: string;
  created_at: Date;
  updated_at: Date;
};

export const findAll = async (query?: Record<string, any>) => {
  const response = await api.get<Document[]>("documents", {
    params: { ...query },
  });

  return response.data;
};

export function useDocuments(query?: Record<string, any>) {
  const {
    data,
    isFetching,
    refetch: getAllDocuments,
  } = useQuery(["documents"], async () => await findAll(query));

  return {
    documents: data,
    isLoading: isFetching,
    getAllDocuments,
  };
}
