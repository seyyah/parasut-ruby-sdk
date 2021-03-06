module ParasutRubySdk
  module REST
    class SalesInvoice < BaseRequest
      def initialize(*args)
        super(*args)
        @resource = 'sales_invoices'
      end

      def all(params = {})
        prepare_request(Util::RequestType::GET, @resource, params)
      end

      def get(id, params = {})
        prepare_request(Util::RequestType::GET, "#{@resource}/#{id}", params)
      end

      def create(params)
        prepare_request(Util::RequestType::POST, @resource, params)
      end

      def update(id, params)
        prepare_request(Util::RequestType::PUT, "#{@resource}/#{id}", params)
      end

      def delete(id)
        prepare_request(Util::RequestType::DELETE, "#{@resource}/#{id}")
      end

      def convert_to_invoice(id)
        prepare_request(Util::RequestType::POST, "#{@resource}/#{id}/convert_to_invoice")
      end

      def create_payments(id, params)
        prepare_request(Util::RequestType::POST, "#{@resource}/#{id}/payments", params)
      end

      def get_e_document_type(id)
        prepare_request(Util::RequestType::GET, "#{@resource}/#{id}/e_document_type")
      end

      def archive(id, params = {})
        prepare_request(Util::RequestType::PATCH, "#{@resource}/#{id}/archive", params)
      end

      def get_e_invoice_inboxes(params = {})
        prepare_request(Util::RequestType::GET, 'e_invoice_inboxes', params)
      end

      def create_e_invoice(id, params)
        prepare_request(Util::RequestType::POST, "#{@resource}/#{id}/e_invoice", params)
      end

      def create_e_archive(params)
        prepare_request( Util::RequestType::POST, "e_archives", params)
      end

      def get_e_archive(id, params = {})
        prepare_request(Util::RequestType::GET, "e_archives/#{id}", params)
      end

      def get_e_archive_pdf(id, params = {})
        prepare_request(Util::RequestType::GET, "e_archives/#{id}/pdf", params)
      end

      def get_e_document_status(id)
        prepare_request(Util::RequestType::GET, "trackable_jobs/#{id}")
      end

      def create_e_invoice(params)
        prepare_request( Util::RequestType::POST, "e_invoices", params)
      end

      def get_e_invoice(id, params = {})
        prepare_request(Util::RequestType::GET, "e_invoices/#{id}", params)
      end

      def get_e_invoice_pdf(id, params = {})
        prepare_request(Util::RequestType::GET, "e_invoices/#{id}/pdf", params)
      end
    end

    class PurchaseBill < BaseRequest
      def initialize(*args)
        super(*args)
        @resource = 'purchase_bills'
      end

      def all(params = {})
        prepare_request(Util::RequestType::GET, @resource, params)
      end

      def get(id, params = {})
        prepare_request(Util::RequestType::GET, "#{@resource}/#{id}", params)
      end

      def create(params)
        prepare_request(Util::RequestType::POST, @resource, params)
      end

      def update(id, params)
        prepare_request(Util::RequestType::PUT, "#{@resource}/#{id}", params)
      end

      def delete(id)
        prepare_request(Util::RequestType::DELETE, "#{@resource}/#{id}")
      end
    end
  end
end
